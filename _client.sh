#compdef 

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# ! Based on: https://github.com/Valodim/zsh-curl-completion/blob/master/_curl
# !
# ! Generator version: 7.25.0
# !
# !
# ! Installation:
# !
# ! Copy the _ file to any directory under FPATH
# ! environment variable (echo $FPATH)
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


local curcontext="$curcontext" state line ret=1
typeset -A opt_args

typeset -A mime_type_abbreviations
# text/*
mime_type_abbreviations[text]="text/plain"
mime_type_abbreviations[html]="text/html"
mime_type_abbreviations[md]="text/x-markdown"
mime_type_abbreviations[csv]="text/csv"
mime_type_abbreviations[css]="text/css"
mime_type_abbreviations[rtf]="text/rtf"
# application/*
mime_type_abbreviations[json]="application/json"
mime_type_abbreviations[xml]="application/xml"
mime_type_abbreviations[yaml]="application/yaml"
mime_type_abbreviations[js]="application/javascript"
mime_type_abbreviations[bin]="application/octet-stream"
mime_type_abbreviations[rdf]="application/rdf+xml"
# image/*
mime_type_abbreviations[jpg]="image/jpeg"
mime_type_abbreviations[png]="image/png"
mime_type_abbreviations[gif]="image/gif"
mime_type_abbreviations[bmp]="image/bmp"
mime_type_abbreviations[tiff]="image/tiff"

#
# Generate zsh completion string list for abbreviated mime types
#
get_mime_type_completions() {
    typeset -a result
    result=()
    for k in "${(@k)mime_type_abbreviations}"; do
        value=$mime_type_abbreviations[${k}]
        #echo $value
        result+=( "${k}[${value}]" )
        #echo $result
    done
    echo "$result"
}

#
# cURL crypto engines completion function
#
_curl_crypto_engine() {
    local vals
    vals=( ${${(f)"$(curl --engine list)":gs/ /}[2,$]} )
    _describe -t outputs 'engines' vals && return 0
}

#
# cURL post data completion functions=
#
_curl_post_data() {

    # don't do anything further if this is raw content
    compset -P '=' && _message 'raw content' && return 0

    # complete filename or stdin for @ syntax
    compset -P '*@' && {
        local expl
        _description files expl stdin
        compadd "$expl[@]" - "-"
        _files
        return 0
    }

    # got a name already? expecting data.
    compset -P '*=' && _message 'data value' && return 0

    # otherwise, name (or @ or =) should be specified
    _message 'data name' && return 0

}


local arg_http arg_ftp arg_other arg_proxy arg_crypto arg_connection arg_auth arg_input arg_output

# HTTP Arguments
arg_http=(''\
  {-0,--http1.0}'[force use of use http 1.0 instead of 1.1]' \
  {-b,--cookie}'[pass data to http server as cookie]:data or file' \
  {-c,--cookie-jar}'[specify cookie file]:file name:_files' \
  {-d,--data}'[send specified data as HTTP POST data]:data:{_curl_post_data}' \
  '--data-binary[post HTTP POST data without any processing]:data:{_curl_post_data}' \
  '--data-urlencode[post HTTP POST data, with url encoding]:data:{_curl_post_data}' \
  {-f,--fail}'[enable failfast behavior for server errors]' \
  '*'{-F,--form}'[add POST form data]:name=content' \
  {-G,--get}'[use HTTP GET even with data (-d, --data, --data-binary)]' \
  '*'{-H,--header}'[specify an extra header]:header' \
  '--ignore-content-length[ignore Content-Length header]' \
  {-i,--include}'[include HTTP header in the output]' \
  {-j,--junk-session-cookies}'[discard all session cookies]' \
  {-e,--referer}'[send url as referer]:referer url:_urls' \
  {-L,--location}'[follow Location headers on http 3XX response]' \
  '--location-trusted[like --location, but allows sending of auth data to redirected hosts]' \
  '--max-redirs[set maximum number of redirection followings allowed]:number' \
  {-J,--remote-header-name}'[use Content-Disposition for output file name]' \
  {-O,--remote-name}'[write to filename parsed from url instead of stdout]' \
  '--post301[do not convert POST to GET after following 301 Location response (follow RFC 2616/10.3.2)]' \
  '--post302[do not convert POST to GET after following 302 Location response (follow RFC 2616/10.3.2)]' \
  )

# FTP arguments
arg_ftp=(\
  {-a,--append}'[append to target file instead of overwriting (FTP/SFTP)]' \
  '--crlf[convert LF to CRLF in upload]' \
  '--disable-eprt[disable use of EPRT and LPRT for active FTP transfers]' \
  '--disable-epsv[disable use of EPSV for passive FTP transfers]' \
  '--ftp-account[account data (FTP)]:data' \
  '--ftp-alternative-to-user[command to send when USER and PASS commands fail (FTP)]:command' \
  '--ftp-create-dirs[create paths remotely if it does not exist]' \
  '--ftp-method[ftp method to use to reach a file (FTP)]:method:(multicwd ocwd singlecwd)' \
  '--ftp-pasv[use passive mode for the data connection (FTP)]' \
  '--ftp-skip-pasv-ip[do not use the ip the server suggests for PASV]' \
  '--form-string[like --form, but do not parse content]:name=string' \
  '--ftp-pret[send PRET before PASV]' \
  '--ftp-ssl-ccc[use clear command channel (CCC) after authentication (FTP)]' \
  '--ftp-ssl-ccc-mode[sets the CCC mode (FTP)]:mode:(active passive)' \
  '--ftp-ssl-control[require SSL/TLS for FTP login, clear for transfer]' \
  {-l,--list-only}'[list names only when listing directories (FTP)]' \
  {-P,--ftp-port}'[use active mode, tell server to connect to specified address or interface (FTP]:address' \
  '*'{-Q,--quote}'[send arbitrary command to the remote server before transfer (FTP/SFTP)]:command' \
  )

# Other Protocol arguments
arg_other=(\
  '--mail-from[specify From: address]:address' \
  '--mail-rcpt[specify email recipient for SMTP, may be given multiple times]:address' \
  {-t,--telnet-option}'[pass options to telnet protocol]:opt=val' \
  '--tftp-blksize[set tftp BLKSIZE option]:value' \
  )

# Proxy arguments
arg_proxy=(\
  '--noproxy[list of hosts to connect directly to instead of through proxy]:no-proxy-list' \
  {-p,--proxytunnel}'[tunnel non-http protocols through http proxy]' \
  {-U,--proxy-user}'[specify the user name and password to use for proxy authentication]:user:password' \
  '--proxy-anyauth[use any authentication method for proxy, default to most secure]' \
  '--proxy-basic[use HTTP Basic authentication for proxy]' \
  '--proxy-digest[use http digest authentication for proxy]' \
  '--proxy-negotiate[enable GSS-Negotiate authentication for proxy]' \
  '--proxy-ntlm[enable ntlm authentication for proxy]' \
  '--proxy1.0[use http 1.0 proxy]:proxy url' \
  {-x,--proxy}'[use specified proxy]:proxy url' \
  '--socks5-gssapi-service[change service name for socks server]:servicename' \
  '--socks5-gssapi-nec[allow unprotected exchange of protection mode negotiation]' \
  )

# Crypto arguments
arg_crypto=(\
  {-1,--tlsv1}'[Forces curl to use TLS version 1 when negotiating with a remote TLS server.]' \
  {-2,--sslv2}'[Forces curl to use SSL version 2 when negotiating with a remote SSL server.]' \
  {-3,--sslv3}'[Forces curl to use SSL version 3 when negotiating with a remote SSL server.]' \
  '--ciphers[specifies which cipher to use for the ssl connection]:list of ciphers' \
  '--crlfile[specify file with revoked certificates]:file' \
  '--delegation[set delegation policy to use with GSS/kerberos]:delegation policy:(none policy always)' \
  {-E,--cert}'[use specified client certificate]:certificate file:_files' \
  '--engine[use selected OpenSSL crypto engine]:ssl crypto engine:{_curl_crypto_engine}' \
  '--egd-file[set ssl entropy gathering daemon socket]:entropy socket:_files' \
  '--cert-type[specify certificate type (PEM, DER, ENG)]:certificate type:(PEM DER ENG)' \
  '--cacert[specify certificate file to verify the peer with]:CA certificate:_files' \
  '--capath[specify a search path for certificate files]:CA certificate directory:_directories' \
  '--hostpubmd5[check remote hosts public key]:md5 hash' \
  {-k,--insecure}'[allow ssl to perform insecure ssl connections (ie, ignore certificate)]' \
  '--key[ssl/ssh private key file name]:key file:_files' \
  '--key-type[ssl/ssh private key file type]:file type:(PEM DER ENG)' \
  '--pubkey[ssh public key file]:pubkey file:_files' \
  '--random-file[set source of random data for ssl]:random source:_files' \
  '--no-sessionid[disable caching of ssl session ids]' \
  '--pass:phrase[passphrase for ssl/ssh private key]' \
  '--ssl[try to use ssl/tls for connection, if available]' \
  '--ssl-reqd[try to use ssl/tls for connection, fail if unavailable]' \
  '--tlsauthtype[set TLS authentication type (only SRP supported!)]:authtype' \
  '--tlsuser[set username for TLS authentication]:user' \
  '--tlspassword[set password for TLS authentication]:password' \
  )

# Connection arguments
arg_connection=(\
  {-4,--ipv4}'[prefer ipv4]' \
  {-6,--ipv6}'[prefer ipv6, if available]' \
  {-B,--use-ascii}'[use ascii mode]' \
  '--compressed[request a compressed transfer]' \
  '--connect-timeout[timeout for connection phase]:seconds' \
  {-I,--head}'[fetch http HEAD only (HTTP/FTP/FILE]' \
  '--interface[work on a specific interface]:name' \
  '--keepalive-time[set time to wait before sending keepalive probes]:seconds' \
  '--limit-rate[specify maximum transfer rate]:speed' \
  '--local-port[set preferred number or range of local ports to use]:num' \
  {-N,--no-buffer}'[disable buffering of the output stream]' \
  '--no-keepalive[disable use of keepalive messages in TCP connections]' \
  '--raw[disable all http decoding and pass raw data]' \
  '--resolve[provide a custom address for a specific host and port pair]:host\:port\:address' \
  '--retry[specify maximum number of retries for transient errors]:num' \
  '--retry-delay[specify delay between retries]:seconds' \
  '--retry-max-time[maximum time to spend on retries]:seconds' \
  '--tcp-nodelay[turn on TCP_NODELAY option]' \
  {-y,--speed-time}'[specify time to abort after if download is slower than speed-limit]:time' \
  {-Y,--speed-limit}'[specify minimum speed for --speed-time]:speed' \
  )

# Authentication arguments
arg_auth=(\
  '--anyauth[use any authentication method, default to most secure]' \
  '--basic[use HTTP Basic authentication]' \
  '--ntlm[enable ntlm authentication]' \
  '--digest[use http digest authentication]' \
  '--krb[use kerberos authentication]:auth:(clear safe confidential private)' \
  '--negotiate[enable GSS-Negotiate authentication]' \
  {-n,--netrc}'[scan ~/.netrc for login data]' \
  '--netrc-optional[like --netrc, but does not make .netrc usage mandatory]' \
  '--netrc-file[like --netrc, but specify file to use]:netrc file:_files' \
  '--tr-encoding[request compressed transfer-encoding]' \
  {-u,--user}'[specify user name and password for server authentication]:user\:password' \
  )

# Input arguments
arg_input=(\
  {-C,--continue-at}'[resume at offset ]:offset' \
  {-g,--globoff}'[do not glob {}\[\] letters]' \
  '--max-filesize[maximum filesize to download, fail for bigger files]:bytes' \
  '--proto[specify allowed protocols for transfer]:protocols' \
  '--proto-redir[specify allowed protocols for transfer after a redirect]:protocols' \
  {-r,--range}'[set range of bytes to request (HTTP/FTP/SFTP/FILE)]:range' \
  {-R,--remote-time}'[use timestamp of remote file for local file]' \
  {-T,--upload-file}'[transfer file to remote url (using PUT for HTTP)]:file to upload:_files' \
  '--url[specify a URL to fetch (multi)]:url:_urls' \
  {-z,--time-cond}'[request downloaded file to be newer than date or given reference file]:date expression' \
  )

# Output arguments
arg_output=(\
  '--create-dirs[create local directory hierarchy as needed]' \
  {-D,--dump-header}'[write protocol headers to file]:dump file:_files' \
  {-o,--output}'[write to specified file instead of stdout]:output file:_files' \
  {--progress-bar,-\#}'[display progress as a simple progress bar]' \
  {-\#,--progress-bar}'[Make curl display progress as a simple progress bar instead of the standard, more informational, meter.]' \
  {-R,--remote-time}'[use timestamp of remote file for local file]' \
  '--raw[disable all http decoding and pass raw data]' \
  {-s,--silent}'[silent mode, do not show progress meter or error messages]' \
  {-S,--show-error}'[show errors in silent mode]' \
  '--stderr[redirect stderr to specified file]:output file:_files' \
  '--trace[enable full trace dump of all incoming and outgoing data]:trace file:_files' \
  '--trace-ascii[enable full trace dump of all incoming and outgoing data, without hex data]:trace file:_files' \
  '--trace-time[prepends a time stamp to each trace or verbose line that curl displays]' \
  {-v,--verbose}'[output debug info]' \
  {-w,--write-out}'[specify message to output on successful operation]:format string' \
  '--xattr[store some file metadata in extended file attributes]' \
  {-X,--request}'[specifies request method for HTTP server]:method:(GET POST PUT DELETE HEAD OPTIONS TRACE CONNECT PATCH LINK UNLINK)' \
  )

_arguments -C -s $arg_http $arg_ftp $arg_other $arg_crypto $arg_connection $arg_auth $arg_input $arg_output \
  {-M,--manual}'[Print manual]' \
  '*'{-K,--config}'[Use other config file to read arguments from]:config file:_files' \
  '--libcurl[output libcurl code for the operation to file]:output file:_files' \
  {-m,--max-time}'[Limit total time of operation]:seconds' \
  {-s,--silent}'[Silent mode, do not show progress meter or error messages]' \
  {-S,--show-error}'[Show errors in silent mode]' \
  '--stderr[Redirect stderr to specified file]:output file:_files' \
  '-q[Do not read settings from .curlrc (must be first option)]' \
  {-h,--help}'[Print help and list of operations]' \
  {-V,--version}'[Print service API version]' \
  '--about[Print the information about service]' \
  '--host[Specify the host URL]':URL:_urls \
  '--dry-run[Print out the cURL command without executing it]' \
  {-ac,--accept}'[Set the Accept header in the request]: :{_values "Accept mime type" $(get_mime_type_completions)}' \
  {-ct,--content-type}'[Set the Content-type header in request]: :{_values "Content mime type" $(get_mime_type_completions)}' \
  '1: :->ops' \
  '*:: :->args' \
  && ret=0


case $state in
  ops)
    # Operations
    _values "Operations" \
            "createAbsence[]" \
            "deleteAbsence[]" \
            "getAbsence[]" \
            "getAbsences[]" \
            "updateAbsence[]"             "createActivity[]" \
            "deleteActivity[]" \
            "getActivity[]" \
            "listActivities[]" \
            "updateActivity[]" \
            "updateActivityStatus[]"             "triggerMirror[]"             "aiSuggestApi[]" \
            "createWorkerApi[]" \
            "listWorkersApi[]" \
            "runWorkerApi[]"             "eksApi[]"             "anlageGApi[]"             "anlageSApi[]"             "attachmentRestore[]" \
            "createAttachment[]" \
            "deleteAttachment[]" \
            "getAttachment[]" \
            "listAttachments[]" \
            "saveAttachmentOcrText[Persist client-side OCR output for an attachment.]"             "createAttachmentVersion[]" \
            "listAttachmentVersions[]" \
            "restoreAttachmentVersion[]"             "acceptInvite[Accept an invite: create the account (or reuse an existing one) and join
the inviting tenant. The invite token proves control of the mailbox.]" \
            "forgotPassword[Send a password reset email to the user]" \
            "login[Authenticate a user with email + password (optional TOTP)]" \
            "logout[Log out the current user (kills the assay session)]" \
            "magicLinkLogin[Request a magic link login (sends an email with a one-time link)]" \
            "magicLinkVerify[Verify a magic link token and log the user in]" \
            "register[Register a new user account]" \
            "resetPassword[Reset the user's password using a reset token]" \
            "totpEnable[Enable TOTP two-factor authentication by verifying a code]" \
            "totpSetup[Set up TOTP two-factor authentication (generates secret + backup codes)]" \
            "verifyEmail[Verify a user's email address using a verification token]"             "listAutomations[]" \
            "triggerAutomation[]" \
            "updateAutomation[]"             "bankLookupApi[]" \
            "bankTransactionsApi[]" \
            "hebesatzLookupApi[]"             "getPlans[All canonical plans (free/starter/business/enterprise) — the single
source of truth lives in 'crate::saasy::plans', matching marketing.]" \
            "getQuotaApi[Effective limits + current usage for the calling tenant.]" \
            "getSubscriptionApi[]" \
            "getUsageApi[]" \
            "paddleSubscriptionWebhook[Paddle Billing subscription webhook. Verifies the 'Paddle-Signature'
header (HMAC-SHA256 over '\"{ts}:{raw_body}\"' with the webhook secret),
then updates 'billing_info' and 'tenants.plan' for the tenant identified
by the subscription 'custom_data' (JSON '{\"tenant_id\": \"...\"}' or a bare
tenant UUID).]" \
            "putQuotaApi[Write the per-tenant quota override ('admin:settings'). An empty object
clears the override.]"             "createBom[]" \
            "deleteBom[]" \
            "getBom[]" \
            "listBoms[]" \
            "updateBom[]"             "allocatePaymentApi[Allocate a payment to an invoice]" \
            "bwaReportApi[Get BWA (Betriebswirtschaftliche Auswertung) report]" \
            "elsterStatusApi[]" \
            "elsterValidateApi[]" \
            "elsterXmlApi[]" \
            "getCashflow[GET /api/v1/bookkeeping/cashflow
Returns operating, investing, and financing cashflow for the given period.]" \
            "getLiquidity[GET /api/v1/bookkeeping/liquidity
Returns current liquidity position with ratios.]" \
            "getOpenInvoicesApi[Get open invoices for a customer]" \
            "getVerfahrensdokumentation[GET /api/v1/bookkeeping/verfahrensdokumentation
Returns the complete compliance catalog of all documented modules.]" \
            "runDunningApi[]"             "budgetsApi[]" \
            "upsertBudgetGoalApi[]"             "createComplianceTraining[]" \
            "deleteComplianceTraining[]" \
            "getComplianceTraining[]" \
            "getComplianceTrainings[]" \
            "updateComplianceTraining[]"             "contactSchema[Serve JSON Schema for client-side validation]" \
            "contactTimeline[Get the full per-contact timeline (Xentral §4.6/4.7).]" \
            "createContact[Create contact]" \
            "deleteContact[Soft-delete contact]" \
            "getContact[Get single contact]" \
            "listContacts[List contacts with search, type filter, and pagination]" \
            "salesVolume[Sales volume per contact]" \
            "updateContact[Update contact]"             "couponRestore[]" \
            "createCoupon[]" \
            "deleteCoupon[]" \
            "getCoupon[]" \
            "listCoupons[]" \
            "updateCoupon[]"             "createSepaDirectDebitApi[]"             "createCreditNote[]" \
            "downloadCreditNotePdf[]" \
            "getCreditNote[]" \
            "listCreditNotes[]"             "createCustomer[]" \
            "customerRestore[]" \
            "deleteCustomer[]" \
            "getCustomer[]" \
            "getCustomers[]" \
            "updateCustomer[]"             "createCommunication[]" \
            "customercommunicationRestore[]" \
            "deleteCommunication[]" \
            "getCommunication[]" \
            "getContactHistory[]" \
            "listCommunications[]" \
            "updateCommunication[]"             "addGroupMembers[]" \
            "createCustomerGroup[]" \
            "deleteCustomerGroup[]" \
            "getCustomerGroup[]" \
            "listCustomerGroups[]" \
            "updateCustomerGroup[]"             "datevExportApi[Export bookkeeping data as DATEV CSV]" \
            "datevPreviewApi[Exported_datev_bookings: returns formed bookings for review]"             "datevImportApi[]"             "createDeclaration[]" \
            "declarationRestore[]" \
            "deleteDeclaration[]" \
            "getDeclaration[]" \
            "getDeclarations[]" \
            "updateDeclaration[]"             "createDeliveryAppointment[]" \
            "deleteDeliveryAppointment[]" \
            "getDeliveryAppointment[]" \
            "getPublicDeliveryAppointmentStatus[Supplier/carrier checks appointment status (public, no auth). The
appointment is only revealed when email AND token match.]" \
            "listDeliveryAppointments[]" \
            "requestPublicDeliveryAppointment[Supplier/carrier requests an inbound delivery slot (public, no auth).
The tenant is derived from the warehouse found by 'code' — never from
the request.]" \
            "updateDeliveryAppointment[]" \
            "updateDeliveryAppointmentStatus[]"             "createDeliveryDate[]" \
            "deleteDeliveryDate[]" \
            "getDeliveryDate[]" \
            "getDeliveryPerformance[On-time performance summary: how many promised delivery dates were met
within a period.]" \
            "listDeliveryDates[]" \
            "updateDeliveryDate[]" \
            "updateDeliveryDateStatus[]"             "createDeliveryNote[]" \
            "deleteDeliveryNote[]" \
            "deliverynoteRestore[]" \
            "downloadDeliveryNotePdf[]" \
            "getDeliveryNote[]" \
            "listDeliveryNotes[]" \
            "pursueDeliveryNote[]"             "downloadDownPaymentInvoicePdf[]" \
            "getDownPaymentInvoice[]" \
            "listDownPaymentInvoices[]"             "ebilanzReportApi[]" \
            "ebilanzXbrlExportApi[]"             "createEmailTemplate[]" \
            "deleteEmailTemplate[]" \
            "getEmailTemplate[]" \
            "listEmailTemplates[]" \
            "renderEmailTemplate[]" \
            "updateEmailTemplate[]"             "createEmissionEntryApi[]" \
            "createEmissionTargetApi[]" \
            "deleteEmissionEntryApi[]" \
            "deleteEmissionTargetApi[]" \
            "emissionsEntriesApi[]" \
            "emissionsExportApi[]" \
            "emissionsFactorsApi[]" \
            "emissionsReportApi[]" \
            "emissionsTargetsApi[]"             "createEmployee[]" \
            "deleteEmployee[]" \
            "employeeRestore[]" \
            "getEmployee[]" \
            "getEmployeePayrollSummary[]" \
            "getEmployees[]" \
            "updateEmployee[]"             "euerApi[]" \
            "euerKategorienApi[]"             "createEventSubscription[]" \
            "deleteEventSubscription[]" \
            "listEventSubscriptions[]"             "fristenApi[]"             "acceptDpa[Record DPA acceptance: sets dpa_accepted_at/by/version on the tenant
settings row (created with company-type defaults if missing).]" \
            "accountErasure[Erase ALL personal data of the tenant (TOS §11: deletion 90 days after
termination).]" \
            "erasureContact[Anonymize + soft-delete a contact: personal attributes are cleared, the
record itself is kept for GoBD retention (Art. 17(3)(e) DSGVO). The audit
trigger on 'contacts' already records who/when.]" \
            "exportContactData[Art. 15 data-subject access export for a contact.]" \
            "exportGdpr[Export the current user's personal data (GDPR Art. 15/20).]" \
            "getDpa[Current DPA acceptance status (from tenant_settings).]"             "generateQrcodeApi[]"             "generateXrechnungApi[]"             "gewerbesteuerApi[]"             "gewinnverwendungApi[]" \
            "gewinnverwendungExportApi[]"             "gezApi[]"             "buchhalterCsvApi[]" \
            "gobdExportApi[GoBD/GDPdU export. Default: ZIP archive ('index.xml' + CSV tables, IDEA
format). '?format=csv' returns the legacy single-journal CSV as JSON.]"             "createGoodsReceipt[]" \
            "deleteGoodsReceipt[]" \
            "getGoodsReceipt[]" \
            "listGoodsReceipts[]"             "createGroupFigure[]" \
            "deleteGroupFigure[]" \
            "getGroupFigure[]" \
            "getGroupFigures[]" \
            "updateGroupFigure[]"             "getImportStatus[]" \
            "startImport[]" \
            "testImportConnection[]"             "instituteStatusApi[]"             "getInstituteProfile[Current institute profile (created with defaults when missing).]" \
            "updateInstituteProfile[Update the institute profile (institute_type and/or kapitalmarktorientiert).]"             "createInventoryCount[]" \
            "deleteInventoryCount[]" \
            "generateInventoryCount[]" \
            "getInventoryCount[]" \
            "listInventoryCounts[]" \
            "updateInventoryCount[]" \
            "updateInventoryCountStatus[]"             "getInventoryValueApi[]" \
            "recordInventoryValueApi[]"             "createInvoice[]" \
            "deleteInvoice[]" \
            "downloadInvoicePdf[]" \
            "getInvoice[]" \
            "getInvoicePdfUrl[]" \
            "getInvoices[]" \
            "invoiceRestore[]" \
            "updateInvoice[]"             "applyPublic[]" \
            "deleteJobApplication[]" \
            "downloadCv[]" \
            "getJobApplication[]" \
            "inboundEmail[Inbound CV email, mailgun/sendgrid inbound-parse style: multipart form
with 'from', 'subject', 'body-plain' and one or more 'attachment-N' file
fields. The subject may reference a posting as '[JOB-<posting_id>]';
without one the application lands in the general inbox.]" \
            "listJobApplications[]" \
            "listPublicPostings[]" \
            "scoreJobApplication[]" \
            "updateJobApplicationStatus[]"             "createJobPosting[]" \
            "deleteJobPosting[]" \
            "getJobPosting[]" \
            "listJobPostings[]" \
            "updateJobPosting[]"             "konzernExportApi[]" \
            "konzernStatusApi[]"             "kostenVorschauApi[]"             "kstApi[]"             "createKycRecord[]" \
            "deleteKycRecord[]" \
            "getKycRecord[]" \
            "getKycRecords[]" \
            "updateKycRecord[]"             "listLeadsApi[]" \
            "updateLeadApi[]"             "getLegalDocuments[List all legal documents of the tenant. Missing documents are seeded from
the default texts (with tenant placeholders replaced) on first access.]" \
            "resetLegalDocuments[Restore default texts for all documents (or a single doc_type/lang when
the optional filter is given). Returns the full tenant list.]" \
            "upsertLegalDocuments[Upsert legal documents per (doc_type, lang). Returns the full tenant list.]"             "listOpenItemsApi[]"             "createConnectionApi[Create a new connection (for API-key based platforms)]" \
            "deleteConnectionApi[Soft-delete a connection]" \
            "getConnectionApi[Get a single connection]" \
            "getSyncDirectionApi[Get current sync direction configuration for a connection]" \
            "getSyncLogsApi[Get sync logs for a connection]" \
            "listConnectionsApi[List connections for the current tenant]" \
            "listPlatformsApi[List all supported platforms]" \
            "oauthAuthorizeApi[OAuth: initiate authorization flow]" \
            "oauthCallbackApi[OAuth: handle callback after authorization]" \
            "triggerSyncApi[Trigger sync for a connection]" \
            "updateConnectionApi[Update a connection]" \
            "updateSyncDirectionApi[Update per-entity sync direction configuration for a connection]" \
            "webhookReceiverApi[Webhook receiver]"             "deleteNotification[]" \
            "listNotifications[]" \
            "markAllRead[]" \
            "markAsRead[]" \
            "unreadCount[]"             "offenlegungApi[]"             "getSmtpConfigApi[]" \
            "saveSmtpConfigApi[]"             "addOrderTags[]" \
            "findOrderByExternalRef[]" \
            "getOrder[]" \
            "getOrders[]" \
            "patchOrder[]" \
            "replaceOrderTags[]" \
            "updateOrderState[]"             "createConfirmation[]" \
            "deleteConfirmation[]" \
            "downloadConfirmationPdf[]" \
            "getConfirmation[]" \
            "listConfirmations[]" \
            "orderconfirmationRestore[]" \
            "pursueConfirmation[]"             "ossReportApi[]"             "completePacking[Mark packing as complete and transition order to shipped]" \
            "getPackingQueue[Get the packing queue - orders ready for packing]" \
            "printDeliveryNote[Print delivery note (Lieferschein) for an order]" \
            "printLabel[Print shipping label for an order]" \
            "recordPackingVideo[Record video of packing process]"             "createParticipation[]" \
            "deleteParticipation[]" \
            "getParticipation[]" \
            "getParticipations[]" \
            "updateParticipation[]"             "paygapAuskunftApi[]" \
            "paygapExportApi[]" \
            "paygapReportApi[]"             "createPayment[]" \
            "deletePayment[]" \
            "getPayment[]" \
            "getPayments[]" \
            "paymentRestore[]" \
            "updatePayment[]"             "listPaymentConditionsApi[]"             "createPaymentGatewayApi[]" \
            "deletePaymentGatewayApi[]" \
            "listPaymentGatewaysApi[]" \
            "oauthAuthorizeApi[]" \
            "oauthCallbackApi[]" \
            "updatePaymentGatewayApi[]"             "payrollApprove[]" \
            "payrollAutopay[]" \
            "payrollCalculate[]" \
            "payrollCreate[]" \
            "payrollDelete[]" \
            "payrollElsterExport[]" \
            "payrollEmail[]" \
            "payrollEntryPdf[]" \
            "payrollGet[]" \
            "payrollList[]" \
            "payrollPay[]" \
            "payrollPdf[]" \
            "payrollSummary[]" \
            "payrollSvMeldungen[]"             "peppolApi[]"             "plausibilityCheckApi[]"             "posBilling[]" \
            "posCreateOrder[]" \
            "posCreateRegister[]" \
            "posCreateTable[]" \
            "posDisableRegister[]" \
            "posFreeTable[]" \
            "posKasseClosing[]" \
            "posKasseEntries[]" \
            "posKasseExport[]" \
            "posKassePayInOut[]" \
            "posListOrders[]" \
            "posListProducts[]" \
            "posListRegisters[]" \
            "posListTables[]" \
            "posOrderPrint[]" \
            "posOrderReceipt[]" \
            "posPayOrder[]" \
            "posSumupCheckout[]"             "createPostingCategory[]" \
            "deletePostingCategory[]" \
            "listPostingCategories[]" \
            "seedPostingCategories[]" \
            "updatePostingCategory[]"             "createPriceTier[]" \
            "deletePriceTier[]" \
            "getPriceTier[]" \
            "getResolvedPrice[]" \
            "listPriceTiers[]" \
            "updatePriceTier[]"             "createProductApi[]" \
            "deleteProductApi[]" \
            "getProductApi[]" \
            "getProductStockApi[]" \
            "getProductsApi[]" \
            "listLowStockProductsApi[]" \
            "productRestore[]" \
            "updateProductApi[]" \
            "updateProductStockApi[]"             "createProductAttribute[]" \
            "deleteProductAttribute[]" \
            "getProductAttribute[]" \
            "listProductAttributes[]" \
            "updateProductAttribute[]"             "createProductCategory[]" \
            "deleteProductCategory[]" \
            "getProductCategory[]" \
            "listProductCategories[]" \
            "updateProductCategory[]"             "createProductVariant[]" \
            "deleteProductVariant[]" \
            "generateProductVariants[]" \
            "getProductVariant[]" \
            "listProductVariants[]" \
            "updateProductVariant[]"             "createProductionOrder[]" \
            "deleteProductionOrder[]" \
            "getProductionOrder[]" \
            "listProductionOrders[]" \
            "productionOrderCosting[Actual-costing report (Nachkalkulation) — material costs from BOM
components at their purchase price plus the resulting per-unit cost and
margin against the finished product's sale price.]" \
            "updateProductionOrder[]" \
            "updateProductionOrderStatus[]"             "convertProformaToInvoice[]" \
            "createProformaInvoice[]" \
            "deleteProformaInvoice[]" \
            "getProformaInvoice[]" \
            "listProformaInvoices[]" \
            "updateProformaInvoice[]"             "proposeAssignmentsApi[]"             "getPublicReturnStatus[Customer checks the status of a return (public, no auth). The return is
only revealed when its linked order's email matches.]" \
            "listPublicReturns[List all returns for an order (public, no auth).]" \
            "requestPublicReturn[Customer requests a return for an order (public, no auth).]"             "createPurchaseOrder[]" \
            "deletePurchaseOrder[]" \
            "getPurchaseOrder[]" \
            "listPurchaseOrders[]" \
            "matchInvoice[3-way invoice check (Rechnungsprüfung): compares the purchase order line
items, the quantities received via goods receipts, and the supplier
invoice line items, reporting quantity and price variances per product.]" \
            "updatePurchaseOrder[]" \
            "updatePurchaseOrderStatus[]"             "createQuotation[]" \
            "deleteQuotation[]" \
            "downloadQuotationPdf[]" \
            "getQuotation[]" \
            "listQuotations[]" \
            "pursueQuotation[]" \
            "quotationRestore[]" \
            "updateQuotation[]"             "createRecurringTemplate[]" \
            "deleteRecurringTemplate[]" \
            "getRecurringTemplate[]" \
            "listRecurringTemplates[]"             "applyReorderProposal[Convert a reorder proposal into a draft purchase order.]" \
            "getReorderProposal[]"             "applyReplenishments[Create one draft stock transfer per (source → target) pair carrying all
suggested product lines for that pair.]" \
            "getReplenishments[]"             "bilanzReportApi[Bilanz (Balance Sheet)]" \
            "guvReportApi[Gewinn- und Verlustrechnung (P&L statement)]" \
            "kontenansichtReportApi[Kontenansicht (Account Overview)]" \
            "umsatzsteuerReportApi[Umsatzsteuer-Voranmeldung (VAT report)]"             "createReturnOrder[]" \
            "deleteReturnOrder[]" \
            "getReturnOrder[]" \
            "listReturnOrders[]" \
            "returnLogisticsQueue[]" \
            "returnLogisticsSummary[Returns-logistics aggregation for the dashboard: quantities received,
restocked and scrapped per warehouse.]" \
            "updateReturnOrder[]" \
            "updateReturnOrderStatus[]"             "convertRfq[Convert an RFQ into a draft purchase order using the quoted unit prices
(falling back to the requested prices, then leaving them blank). Marks the
RFQ as 'converted'.]" \
            "createRfq[]" \
            "deleteRfq[]" \
            "getRfq[]" \
            "listRfqs[]" \
            "updateRfq[]" \
            "updateRfqStatus[]"             "globalSearch[GET /api/v1/search?q=...]" \
            "myPermissions[GET /api/v1/me/permissions — resolved permissions from the auth token,
used by the frontend to show/hide admin navigation.]"             "createServiceAssignment[]" \
            "deleteServiceAssignment[]" \
            "getServiceAssignment[]" \
            "getServiceAssignments[]" \
            "updateServiceAssignment[]"             "createServiceJob[]" \
            "deleteServiceJob[]" \
            "getServiceJob[]" \
            "getServiceJobs[]" \
            "updateServiceJob[]"             "createShareholder[]" \
            "deleteShareholder[]" \
            "getShareholder[]" \
            "getShareholders[]" \
            "updateShareholder[]"             "createShipment[]" \
            "createShipmentFromOrder[Create a real shipment for an order: calls the configured carrier's label
API, stores the returned tracking/label on a new shipment row, and marks
the order as shipped.]" \
            "deleteShipment[]" \
            "getShipment[]" \
            "listShipments[]" \
            "trackOrderPublic[Customer-facing tracking lookup: order number + email → shipment status and
live carrier events. No auth (public storefront API).]" \
            "trackShipmentApi[]" \
            "updateShipmentStatus[]"             "getCredentialsApi[]" \
            "getRatesApi[]" \
            "listProvidersApi[]" \
            "saveCredentialsApi[]"             "createShippingRule[]" \
            "deleteShippingRule[]" \
            "getShippingRule[]" \
            "listShippingRules[]" \
            "updateShippingRule[]"             "createShippingThreshold[]" \
            "deleteShippingThreshold[]" \
            "getDeliverable[]" \
            "getShippingThreshold[]" \
            "listShippingThresholds[]" \
            "updateShippingThreshold[]"             "shopEditorSave[]"             "createSilentPartner[]" \
            "deleteSilentPartner[]" \
            "getSilentPartner[]" \
            "getSilentPartners[]" \
            "updateSilentPartner[]"             "stilleExportApi[]" \
            "stilleReportApi[]"             "getStockMovement[]" \
            "listStockMovements[]"             "createStockTransfer[]" \
            "deleteStockTransfer[]" \
            "getStockTransfer[]" \
            "listStockTransfers[]" \
            "updateStockTransferStatus[]"             "shippingSuitabilityApi[]"             "createSupplierCondition[]" \
            "deleteSupplierCondition[]" \
            "getSupplierCondition[]" \
            "listSupplierConditions[]" \
            "updateSupplierCondition[]"             "createSupplierInvoice[]" \
            "deleteSupplierInvoice[]" \
            "getSupplierInvoice[]" \
            "listSupplierInvoices[]" \
            "updateSupplierInvoice[]" \
            "updateSupplierInvoiceStatus[]"             "createChannelApi[]" \
            "deleteChannelApi[]" \
            "listChannelsApi[]" \
            "updateChannelApi[]"             "createTicketApi[]" \
            "deleteTicketApi[]" \
            "getTicketApi[]" \
            "listTicketsApi[]" \
            "updateTicketApi[]"             "createTaxRate[Create a tax rate ('admin:settings').]" \
            "deleteTaxRate[Delete a tax rate by id ('admin:settings').]" \
            "listTaxRates[List the calling tenant's tax rates.]" \
            "updateTaxRate[Update a tax rate by id ('admin:settings'). Replaces all body fields.]"             "getTenantSettings[]" \
            "updateTenantSettings[]"             "listMessagesApi[]" \
            "sendMessageApi[]"             "clockInTimeEntry[Clock in for the authenticated user (resolved via their employee profile).]" \
            "clockOutTimeEntry[Clock out an entry: the entry's owner, or anyone with 'time_entries:write'.]" \
            "getLaborCosts[Labor-cost report: worked hours aggregated per employee / order / day,
valued at the employee's hourly cost rate.]" \
            "listTimeEntries[List time entries with optional date-range / active / employee filters.]"             "createTrainingAssignment[]" \
            "deleteTrainingAssignment[]" \
            "getTrainingAssignment[]" \
            "getTrainingAssignments[]" \
            "updateTrainingAssignment[]"             "getMyTrainings[]" \
            "getTrainingContent[]" \
            "getTrainingOverview[]" \
            "submitTrainingResult[]"             "changePassword[Change the current user's password (requires the current password).]" \
            "createTeam[Create a new team within the current tenant]" \
            "generateApiKey[Generate a new API key for the current user]" \
            "inviteUser[Invite a user to the current tenant/organization]" \
            "listTeams[List all teams in the current tenant]" \
            "removeUserFromOrg[Remove a user from the current organization]" \
            "updateProfile[Update the current user's profile]" \
            "userProfile[Get the current user's profile]" \
            "userTenants[List all tenants (organizations) the current user belongs to]"             "getUser[]" \
            "listUsers[]" \
            "removeUser[]" \
            "updateUserPermissions[]" \
            "updateUserRole[]"             "jahresustApi[]" \
            "ustvaApi[]"             "createVoucher[]" \
            "deleteVoucher[]" \
            "getVoucher[]" \
            "listVouchers[]" \
            "updateVoucher[]" \
            "voucherRestore[]"             "createWarehouse[]" \
            "deleteWarehouse[]" \
            "getWarehouse[]" \
            "listWarehouses[]" \
            "updateWarehouse[]"             "createWarehouseStock[]" \
            "deleteWarehouseStock[]" \
            "listWarehouseStock[]" \
            "updateWarehouseStock[]"             "createSubscription[Create a webhook subscription (outbound hook).]" \
            "deleteSubscription[Delete a webhook subscription.]" \
            "emitApi[Manually fire an event against matching hooks (for testing/flows).]" \
            "listEvent[List webhook events (inbound + outbound log).]" \
            "listSubscriptions[List webhook subscriptions for the tenant.]" \
            "updateSubscription[Update a webhook subscription.]"             "listWorkflowsApi[]" \
            "setWorkflowEnabledApi[]"             "generateZugferdApi[]" \

    _arguments "(--help)--help[Print information about operation]"

    ret=0
    ;;
  args)
    case $line[1] in
      createAbsence)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteAbsence)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAbsence)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAbsences)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateAbsence)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createActivity)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteActivity)
        local -a _op_arguments
        _op_arguments=(
          "activity_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getActivity)
        local -a _op_arguments
        _op_arguments=(
          "activity_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listActivities)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"pageSize=:[QUERY] "
"contactId=:[QUERY] "
"activityType=:[QUERY] "
"status=:[QUERY] "
"assignedTo=:[QUERY] "
"overdueOnly=true:[QUERY] Only show overdue follow-ups."
          "overdueOnly=false:[QUERY] Only show overdue follow-ups."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateActivity)
        local -a _op_arguments
        _op_arguments=(
          "activity_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateActivityStatus)
        local -a _op_arguments
        _op_arguments=(
          "activity_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      triggerMirror)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      aiSuggestApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createWorkerApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listWorkersApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      runWorkerApi)
        local -a _op_arguments
        _op_arguments=(
          "worker_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      eksApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      anlageGApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      anlageSApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      attachmentRestore)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createAttachment)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteAttachment)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAttachment)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listAttachments)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"pageSize=:[QUERY] "
"contactId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      saveAttachmentOcrText)
        local -a _op_arguments
        _op_arguments=(
          "attachment_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createAttachmentVersion)
        local -a _op_arguments
        _op_arguments=(
          "attachment_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listAttachmentVersions)
        local -a _op_arguments
        _op_arguments=(
          "attachment_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      restoreAttachmentVersion)
        local -a _op_arguments
        _op_arguments=(
          "attachment_id=:[PATH] "
"version_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      acceptInvite)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      forgotPassword)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      login)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      logout)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      magicLinkLogin)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      magicLinkVerify)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      register)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      resetPassword)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      totpEnable)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      totpSetup)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      verifyEmail)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listAutomations)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      triggerAutomation)
        local -a _op_arguments
        _op_arguments=(
          "key=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateAutomation)
        local -a _op_arguments
        _op_arguments=(
          "key=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      bankLookupApi)
        local -a _op_arguments
        _op_arguments=(
                    "iban=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      bankTransactionsApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      hebesatzLookupApi)
        local -a _op_arguments
        _op_arguments=(
                    "gemeindeschluessel=:[QUERY] "
"plz=:[QUERY] "
"name=:[QUERY] "
"stichtag=:[QUERY] Stichtag for validity (YYYY-MM-DD); defaults to today. Picks row where valid_from &lt;&#x3D; date &lt;&#x3D; valid_to."
"country_code=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getPlans)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getQuotaApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getSubscriptionApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getUsageApi)
        local -a _op_arguments
        _op_arguments=(
                    "meter=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      paddleSubscriptionWebhook)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      putQuotaApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createBom)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteBom)
        local -a _op_arguments
        _op_arguments=(
          "bom_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBom)
        local -a _op_arguments
        _op_arguments=(
          "bom_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listBoms)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"pageSize=:[QUERY] "
"search=:[QUERY] "
"productId=:[QUERY] Filter by finished product id."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateBom)
        local -a _op_arguments
        _op_arguments=(
          "bom_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      allocatePaymentApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      bwaReportApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
"month=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      elsterStatusApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      elsterValidateApi)
        local -a _op_arguments
        _op_arguments=(
                    "zeitraum=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      elsterXmlApi)
        local -a _op_arguments
        _op_arguments=(
                    "zeitraum=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCashflow)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
"month=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getLiquidity)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getOpenInvoicesApi)
        local -a _op_arguments
        _op_arguments=(
          "customer_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVerfahrensdokumentation)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      runDunningApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      budgetsApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
"month=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      upsertBudgetGoalApi)
        local -a _op_arguments
        _op_arguments=(
          "category=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createComplianceTraining)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteComplianceTraining)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getComplianceTraining)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getComplianceTrainings)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateComplianceTraining)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      contactSchema)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      contactTimeline)
        local -a _op_arguments
        _op_arguments=(
          "contact_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createContact)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteContact)
        local -a _op_arguments
        _op_arguments=(
          "contact_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getContact)
        local -a _op_arguments
        _op_arguments=(
          "contact_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listContacts)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"contact_type=:[QUERY] "
"tag=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      salesVolume)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"contact_type=:[QUERY] "
"tag=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateContact)
        local -a _op_arguments
        _op_arguments=(
          "contact_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      couponRestore)
        local -a _op_arguments
        _op_arguments=(
          "coupon_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCoupon)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCoupon)
        local -a _op_arguments
        _op_arguments=(
          "coupon_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCoupon)
        local -a _op_arguments
        _op_arguments=(
          "coupon_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listCoupons)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"is_active=true:[QUERY] "
          "is_active=false:[QUERY] "
"code=:[QUERY] "
"discount_type=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCoupon)
        local -a _op_arguments
        _op_arguments=(
          "coupon_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createSepaDirectDebitApi)
        local -a _op_arguments
        _op_arguments=(
                    "creditor_name=:[QUERY] "
"creditor_iban=:[QUERY] "
"creditor_bic=:[QUERY] "
"creditor_id=:[QUERY] "
"mandate_id=:[QUERY] "
"mandate_date=:[QUERY] "
"debtor_name=:[QUERY] "
"debtor_iban=:[QUERY] "
"debtor_bic=:[QUERY] "
"amount=:[QUERY] "
"collection_date=:[QUERY] "
"description=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCreditNote)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      downloadCreditNotePdf)
        local -a _op_arguments
        _op_arguments=(
          "credit_note_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCreditNote)
        local -a _op_arguments
        _op_arguments=(
          "credit_note_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listCreditNotes)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCustomer)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      customerRestore)
        local -a _op_arguments
        _op_arguments=(
          "customer_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCustomer)
        local -a _op_arguments
        _op_arguments=(
          "customer_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCustomer)
        local -a _op_arguments
        _op_arguments=(
          "customer_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCustomers)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCustomer)
        local -a _op_arguments
        _op_arguments=(
          "customer_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCommunication)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      customercommunicationRestore)
        local -a _op_arguments
        _op_arguments=(
          "communication_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCommunication)
        local -a _op_arguments
        _op_arguments=(
          "communication_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCommunication)
        local -a _op_arguments
        _op_arguments=(
          "communication_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getContactHistory)
        local -a _op_arguments
        _op_arguments=(
          "contact_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listCommunications)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"contact_id=:[QUERY] Filter history to a single contact."
"channel=:[QUERY] "
"direction=:[QUERY] "
"from=:[QUERY] Only include communications after this ISO date (inclusive)."
"to=:[QUERY] Only include communications before this ISO date (inclusive)."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCommunication)
        local -a _op_arguments
        _op_arguments=(
          "communication_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      addGroupMembers)
        local -a _op_arguments
        _op_arguments=(
          "customer_group_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCustomerGroup)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCustomerGroup)
        local -a _op_arguments
        _op_arguments=(
          "customer_group_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCustomerGroup)
        local -a _op_arguments
        _op_arguments=(
          "customer_group_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listCustomerGroups)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCustomerGroup)
        local -a _op_arguments
        _op_arguments=(
          "customer_group_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      datevExportApi)
        local -a _op_arguments
        _op_arguments=(
                    "account_schema=:[QUERY] "
"date_from=:[QUERY] "
"date_to=:[QUERY] "
"page=:[QUERY] "
"page_size=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      datevPreviewApi)
        local -a _op_arguments
        _op_arguments=(
                    "account_schema=:[QUERY] "
"date_from=:[QUERY] "
"date_to=:[QUERY] "
"page=:[QUERY] "
"page_size=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      datevImportApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createDeclaration)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      declarationRestore)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteDeclaration)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getDeclaration)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getDeclarations)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateDeclaration)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createDeliveryAppointment)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteDeliveryAppointment)
        local -a _op_arguments
        _op_arguments=(
          "appointment_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getDeliveryAppointment)
        local -a _op_arguments
        _op_arguments=(
          "appointment_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getPublicDeliveryAppointmentStatus)
        local -a _op_arguments
        _op_arguments=(
                    "appointmentId=:[QUERY] "
"email=:[QUERY] "
"token=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listDeliveryAppointments)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"status=:[QUERY] "
"warehouse_id=:[QUERY] "
"from=:[QUERY] "
"to=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      requestPublicDeliveryAppointment)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateDeliveryAppointment)
        local -a _op_arguments
        _op_arguments=(
          "appointment_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateDeliveryAppointmentStatus)
        local -a _op_arguments
        _op_arguments=(
          "appointment_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createDeliveryDate)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteDeliveryDate)
        local -a _op_arguments
        _op_arguments=(
          "delivery_date_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getDeliveryDate)
        local -a _op_arguments
        _op_arguments=(
          "delivery_date_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getDeliveryPerformance)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"pageSize=:[QUERY] "
"orderNumber=:[QUERY] "
"status=:[QUERY] "
"from=:[QUERY] Only dates on or after this date."
"to=:[QUERY] Only dates on or before this date."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listDeliveryDates)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"pageSize=:[QUERY] "
"orderNumber=:[QUERY] "
"status=:[QUERY] "
"from=:[QUERY] Only dates on or after this date."
"to=:[QUERY] Only dates on or before this date."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateDeliveryDate)
        local -a _op_arguments
        _op_arguments=(
          "delivery_date_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateDeliveryDateStatus)
        local -a _op_arguments
        _op_arguments=(
          "delivery_date_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createDeliveryNote)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteDeliveryNote)
        local -a _op_arguments
        _op_arguments=(
          "delivery_note_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deliverynoteRestore)
        local -a _op_arguments
        _op_arguments=(
          "delivery_note_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      downloadDeliveryNotePdf)
        local -a _op_arguments
        _op_arguments=(
          "delivery_note_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getDeliveryNote)
        local -a _op_arguments
        _op_arguments=(
          "delivery_note_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listDeliveryNotes)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      pursueDeliveryNote)
        local -a _op_arguments
        _op_arguments=(
          "delivery_note_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      downloadDownPaymentInvoicePdf)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getDownPaymentInvoice)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listDownPaymentInvoices)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      ebilanzReportApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
"date_from=:[QUERY] "
"date_to=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      ebilanzXbrlExportApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
"date_from=:[QUERY] "
"date_to=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createEmailTemplate)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteEmailTemplate)
        local -a _op_arguments
        _op_arguments=(
          "email_template_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getEmailTemplate)
        local -a _op_arguments
        _op_arguments=(
          "email_template_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listEmailTemplates)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"pageSize=:[QUERY] "
"status=:[QUERY] "
"search=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      renderEmailTemplate)
        local -a _op_arguments
        _op_arguments=(
          "email_template_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateEmailTemplate)
        local -a _op_arguments
        _op_arguments=(
          "email_template_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createEmissionEntryApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createEmissionTargetApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteEmissionEntryApi)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteEmissionTargetApi)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      emissionsEntriesApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      emissionsExportApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      emissionsFactorsApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      emissionsReportApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      emissionsTargetsApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createEmployee)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteEmployee)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      employeeRestore)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getEmployee)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getEmployeePayrollSummary)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
          "year=:[QUERY] Fiscal year for the breakdown; defaults to the current year."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getEmployees)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateEmployee)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      euerApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      euerKategorienApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createEventSubscription)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteEventSubscription)
        local -a _op_arguments
        _op_arguments=(
          "subscription_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listEventSubscriptions)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      fristenApi)
        local -a _op_arguments
        _op_arguments=(
                    "bundesland=:[QUERY] "
"voranmeldungsrhythmus=:[QUERY] "
"dauerfristverlaengerung=true:[QUERY] "
          "dauerfristverlaengerung=false:[QUERY] "
"est_aktiv=true:[QUERY] "
          "est_aktiv=false:[QUERY] "
"gewst_aktiv=true:[QUERY] "
          "gewst_aktiv=false:[QUERY] "
"monate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      acceptDpa)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      accountErasure)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      erasureContact)
        local -a _op_arguments
        _op_arguments=(
          "contact_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      exportContactData)
        local -a _op_arguments
        _op_arguments=(
          "contact_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      exportGdpr)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getDpa)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      generateQrcodeApi)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
          "iban=:[QUERY] "
"holder_name=:[QUERY] "
"bic=:[QUERY] "
"amount=:[QUERY] "
"reference=:[QUERY] "
"purpose=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      generateXrechnungApi)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
          "supplier_name=:[QUERY] "
"supplier_street=:[QUERY] "
"supplier_city=:[QUERY] "
"supplier_zip=:[QUERY] "
"supplier_country=:[QUERY] "
"supplier_vat_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      gewerbesteuerApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
"hebesatz=:[QUERY] "
"gewerbeertrag=:[QUERY] "
"country=:[QUERY] "
"gemeindeschluessel=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      gewinnverwendungApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      gewinnverwendungExportApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      gezApi)
        local -a _op_arguments
        _op_arguments=(
                    "jahr=:[QUERY] "
"betriebsstaetten=:[QUERY] Liste der Betriebsstätten als JSON, z.B. &#39;[{\&quot;name\&quot;:\&quot;Filiale 1\&quot;,\&quot;beschaefigte\&quot;:12}]&#39;."
"kfz=:[QUERY] Gesamtzahl der betrieblich genutzten Kfz (falls keine Betriebsstätten angegeben sind)."
"hotelzimmer=:[QUERY] Gesamtzahl der Hotel-/Gästezimmer und Ferienwohnungen."
"beschaefigte=:[QUERY] Gesamtzahl der Beschäftigten (verwendet nur, wenn &#39;betriebsstaetten&#39; fehlt;
dann wird eine einzelne Betriebsstätte angenommen)."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      buchhalterCsvApi)
        local -a _op_arguments
        _op_arguments=(
                    "date_from=:[QUERY] "
"date_to=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      gobdExportApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
"format=:[QUERY] Export format: &#39;zip&#39; (default, full GDPdU/IDEA export) or
&#39;csv&#39; (legacy single-journal CSV as JSON)."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createGoodsReceipt)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteGoodsReceipt)
        local -a _op_arguments
        _op_arguments=(
          "goods_receipt_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getGoodsReceipt)
        local -a _op_arguments
        _op_arguments=(
          "goods_receipt_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listGoodsReceipts)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"purchase_order_id=:[QUERY] "
"supplier_name=:[QUERY] "
"warehouse_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createGroupFigure)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteGroupFigure)
        local -a _op_arguments
        _op_arguments=(
          "year=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getGroupFigure)
        local -a _op_arguments
        _op_arguments=(
          "year=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getGroupFigures)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateGroupFigure)
        local -a _op_arguments
        _op_arguments=(
          "year=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getImportStatus)
        local -a _op_arguments
        _op_arguments=(
          "job_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      startImport)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      testImportConnection)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      instituteStatusApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getInstituteProfile)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateInstituteProfile)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createInventoryCount)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteInventoryCount)
        local -a _op_arguments
        _op_arguments=(
          "inventory_count_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      generateInventoryCount)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getInventoryCount)
        local -a _op_arguments
        _op_arguments=(
          "inventory_count_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listInventoryCounts)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"status=:[QUERY] "
"warehouse_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateInventoryCount)
        local -a _op_arguments
        _op_arguments=(
          "inventory_count_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateInventoryCountStatus)
        local -a _op_arguments
        _op_arguments=(
          "inventory_count_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getInventoryValueApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      recordInventoryValueApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createInvoice)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteInvoice)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      downloadInvoicePdf)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getInvoice)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getInvoicePdfUrl)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getInvoices)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      invoiceRestore)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateInvoice)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyPublic)
        local -a _op_arguments
        _op_arguments=(
          "posting_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteJobApplication)
        local -a _op_arguments
        _op_arguments=(
          "application_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      downloadCv)
        local -a _op_arguments
        _op_arguments=(
          "application_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getJobApplication)
        local -a _op_arguments
        _op_arguments=(
          "application_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      inboundEmail)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listJobApplications)
        local -a _op_arguments
        _op_arguments=(
                    "postingId=:[QUERY] "
"status=:[QUERY] "
"page=:[QUERY] "
"pageSize=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listPublicPostings)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      scoreJobApplication)
        local -a _op_arguments
        _op_arguments=(
          "application_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateJobApplicationStatus)
        local -a _op_arguments
        _op_arguments=(
          "application_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createJobPosting)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteJobPosting)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getJobPosting)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listJobPostings)
        local -a _op_arguments
        _op_arguments=(
                    "status=:[QUERY] "
"page=:[QUERY] "
"pageSize=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateJobPosting)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      konzernExportApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      konzernStatusApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      kostenVorschauApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
"month=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      kstApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
"gewinn=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createKycRecord)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteKycRecord)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getKycRecord)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getKycRecords)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateKycRecord)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listLeadsApi)
        local -a _op_arguments
        _op_arguments=(
                    "status=:[QUERY] "
"source=:[QUERY] "
"search=:[QUERY] "
"page=:[QUERY] "
"page_size=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateLeadApi)
        local -a _op_arguments
        _op_arguments=(
          "lead_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getLegalDocuments)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      resetLegalDocuments)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      upsertLegalDocuments)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listOpenItemsApi)
        local -a _op_arguments
        _op_arguments=(
                    "reminder_level1_days=:[QUERY] "
"reminder_level2_days=:[QUERY] "
"reminder_level3_days=:[QUERY] "
"customer_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createConnectionApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteConnectionApi)
        local -a _op_arguments
        _op_arguments=(
          "connection_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getConnectionApi)
        local -a _op_arguments
        _op_arguments=(
          "connection_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getSyncDirectionApi)
        local -a _op_arguments
        _op_arguments=(
          "connection_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getSyncLogsApi)
        local -a _op_arguments
        _op_arguments=(
          "connection_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listConnectionsApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listPlatformsApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      oauthAuthorizeApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      oauthCallbackApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      triggerSyncApi)
        local -a _op_arguments
        _op_arguments=(
          "connection_id=:[PATH] "
          "sync_type=:[QUERY] "
"direction=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateConnectionApi)
        local -a _op_arguments
        _op_arguments=(
          "connection_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateSyncDirectionApi)
        local -a _op_arguments
        _op_arguments=(
          "connection_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      webhookReceiverApi)
        local -a _op_arguments
        _op_arguments=(
          "platform=:[PATH] "
"connection_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteNotification)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listNotifications)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      markAllRead)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      markAsRead)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      unreadCount)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      offenlegungApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getSmtpConfigApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      saveSmtpConfigApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      addOrderTags)
        local -a _op_arguments
        _op_arguments=(
          "order_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      findOrderByExternalRef)
        local -a _op_arguments
        _op_arguments=(
          "ext_ref=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getOrder)
        local -a _op_arguments
        _op_arguments=(
          "order_number=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getOrders)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchOrder)
        local -a _op_arguments
        _op_arguments=(
          "order_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      replaceOrderTags)
        local -a _op_arguments
        _op_arguments=(
          "order_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateOrderState)
        local -a _op_arguments
        _op_arguments=(
          "order_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createConfirmation)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteConfirmation)
        local -a _op_arguments
        _op_arguments=(
          "confirmation_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      downloadConfirmationPdf)
        local -a _op_arguments
        _op_arguments=(
          "confirmation_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getConfirmation)
        local -a _op_arguments
        _op_arguments=(
          "confirmation_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listConfirmations)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      orderconfirmationRestore)
        local -a _op_arguments
        _op_arguments=(
          "confirmation_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      pursueConfirmation)
        local -a _op_arguments
        _op_arguments=(
          "confirmation_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      ossReportApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      completePacking)
        local -a _op_arguments
        _op_arguments=(
          "order_number=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getPackingQueue)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      printDeliveryNote)
        local -a _op_arguments
        _op_arguments=(
          "order_number=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      printLabel)
        local -a _op_arguments
        _op_arguments=(
          "order_number=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      recordPackingVideo)
        local -a _op_arguments
        _op_arguments=(
          "order_number=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createParticipation)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteParticipation)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getParticipation)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getParticipations)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateParticipation)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      paygapAuskunftApi)
        local -a _op_arguments
        _op_arguments=(
          "employee_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      paygapExportApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      paygapReportApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createPayment)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deletePayment)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getPayment)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getPayments)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      paymentRestore)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updatePayment)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listPaymentConditionsApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createPaymentGatewayApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deletePaymentGatewayApi)
        local -a _op_arguments
        _op_arguments=(
          "gateway_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listPaymentGatewaysApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      oauthAuthorizeApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      oauthCallbackApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updatePaymentGatewayApi)
        local -a _op_arguments
        _op_arguments=(
          "gateway_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      payrollApprove)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      payrollAutopay)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      payrollCalculate)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      payrollCreate)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      payrollDelete)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      payrollElsterExport)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      payrollEmail)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      payrollEntryPdf)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
"entry_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      payrollGet)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      payrollList)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
"status=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      payrollPay)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      payrollPdf)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      payrollSummary)
        local -a _op_arguments
        _op_arguments=(
          "year=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      payrollSvMeldungen)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      peppolApi)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      plausibilityCheckApi)
        local -a _op_arguments
        _op_arguments=(
                    "date_from=:[QUERY] "
"date_to=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      posBilling)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      posCreateOrder)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      posCreateRegister)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      posCreateTable)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      posDisableRegister)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      posFreeTable)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      posKasseClosing)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      posKasseEntries)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      posKasseExport)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      posKassePayInOut)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      posListOrders)
        local -a _op_arguments
        _op_arguments=(
                    "status=:[QUERY] Filter by order status"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      posListProducts)
        local -a _op_arguments
        _op_arguments=(
                    "q=:[QUERY] Product search"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      posListRegisters)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      posListTables)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      posOrderPrint)
        local -a _op_arguments
        _op_arguments=(
          "order_number=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      posOrderReceipt)
        local -a _op_arguments
        _op_arguments=(
          "order_number=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      posPayOrder)
        local -a _op_arguments
        _op_arguments=(
          "order_number=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      posSumupCheckout)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createPostingCategory)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deletePostingCategory)
        local -a _op_arguments
        _op_arguments=(
          "category_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listPostingCategories)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      seedPostingCategories)
        local -a _op_arguments
        _op_arguments=(
          "skr_version=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updatePostingCategory)
        local -a _op_arguments
        _op_arguments=(
          "category_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createPriceTier)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deletePriceTier)
        local -a _op_arguments
        _op_arguments=(
          "price_tier_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getPriceTier)
        local -a _op_arguments
        _op_arguments=(
          "price_tier_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getResolvedPrice)
        local -a _op_arguments
        _op_arguments=(
                    "productId=:[QUERY] "
"quantity=:[QUERY] "
"contactId=:[QUERY] Contact used to match customer-group-scoped tiers."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listPriceTiers)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"product_id=:[QUERY] "
"customer_group_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updatePriceTier)
        local -a _op_arguments
        _op_arguments=(
          "price_tier_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createProductApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteProductApi)
        local -a _op_arguments
        _op_arguments=(
          "product_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getProductApi)
        local -a _op_arguments
        _op_arguments=(
          "product_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getProductStockApi)
        local -a _op_arguments
        _op_arguments=(
          "product_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getProductsApi)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listLowStockProductsApi)
        local -a _op_arguments
        _op_arguments=(
                    "threshold=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      productRestore)
        local -a _op_arguments
        _op_arguments=(
          "product_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateProductApi)
        local -a _op_arguments
        _op_arguments=(
          "product_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateProductStockApi)
        local -a _op_arguments
        _op_arguments=(
          "product_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createProductAttribute)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteProductAttribute)
        local -a _op_arguments
        _op_arguments=(
          "attribute_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getProductAttribute)
        local -a _op_arguments
        _op_arguments=(
          "attribute_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listProductAttributes)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"product_id=:[QUERY] "
"is_filterable=true:[QUERY] "
          "is_filterable=false:[QUERY] "
"search=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateProductAttribute)
        local -a _op_arguments
        _op_arguments=(
          "attribute_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createProductCategory)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteProductCategory)
        local -a _op_arguments
        _op_arguments=(
          "category_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getProductCategory)
        local -a _op_arguments
        _op_arguments=(
          "category_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listProductCategories)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateProductCategory)
        local -a _op_arguments
        _op_arguments=(
          "category_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createProductVariant)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteProductVariant)
        local -a _op_arguments
        _op_arguments=(
          "variant_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      generateProductVariants)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getProductVariant)
        local -a _op_arguments
        _op_arguments=(
          "variant_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listProductVariants)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"product_id=:[QUERY] "
"is_active=true:[QUERY] "
          "is_active=false:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateProductVariant)
        local -a _op_arguments
        _op_arguments=(
          "variant_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createProductionOrder)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteProductionOrder)
        local -a _op_arguments
        _op_arguments=(
          "production_order_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getProductionOrder)
        local -a _op_arguments
        _op_arguments=(
          "production_order_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listProductionOrders)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"pageSize=:[QUERY] "
"search=:[QUERY] "
"status=:[QUERY] Filter by status."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      productionOrderCosting)
        local -a _op_arguments
        _op_arguments=(
          "production_order_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateProductionOrder)
        local -a _op_arguments
        _op_arguments=(
          "production_order_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateProductionOrderStatus)
        local -a _op_arguments
        _op_arguments=(
          "production_order_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      convertProformaToInvoice)
        local -a _op_arguments
        _op_arguments=(
          "proforma_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createProformaInvoice)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteProformaInvoice)
        local -a _op_arguments
        _op_arguments=(
          "proforma_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getProformaInvoice)
        local -a _op_arguments
        _op_arguments=(
          "proforma_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listProformaInvoices)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"status=:[QUERY] "
"customer_id=:[QUERY] "
"order_number=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateProformaInvoice)
        local -a _op_arguments
        _op_arguments=(
          "proforma_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      proposeAssignmentsApi)
        local -a _op_arguments
        _op_arguments=(
                    "min_confidence=:[QUERY] "
"customer_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getPublicReturnStatus)
        local -a _op_arguments
        _op_arguments=(
                    "returnNumber=:[QUERY] Either return_number or return_order_id must be provided."
"returnOrderId=:[QUERY] "
"email=:[QUERY] "
"orderNumber=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listPublicReturns)
        local -a _op_arguments
        _op_arguments=(
                    "orderNumber=:[QUERY] "
"email=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      requestPublicReturn)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createPurchaseOrder)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deletePurchaseOrder)
        local -a _op_arguments
        _op_arguments=(
          "purchase_order_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getPurchaseOrder)
        local -a _op_arguments
        _op_arguments=(
          "purchase_order_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listPurchaseOrders)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"status=:[QUERY] "
"supplier_name=:[QUERY] "
"search=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      matchInvoice)
        local -a _op_arguments
        _op_arguments=(
          "purchase_order_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updatePurchaseOrder)
        local -a _op_arguments
        _op_arguments=(
          "purchase_order_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updatePurchaseOrderStatus)
        local -a _op_arguments
        _op_arguments=(
          "purchase_order_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createQuotation)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteQuotation)
        local -a _op_arguments
        _op_arguments=(
          "quotation_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      downloadQuotationPdf)
        local -a _op_arguments
        _op_arguments=(
          "quotation_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getQuotation)
        local -a _op_arguments
        _op_arguments=(
          "quotation_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listQuotations)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      pursueQuotation)
        local -a _op_arguments
        _op_arguments=(
          "quotation_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      quotationRestore)
        local -a _op_arguments
        _op_arguments=(
          "quotation_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateQuotation)
        local -a _op_arguments
        _op_arguments=(
          "quotation_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createRecurringTemplate)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteRecurringTemplate)
        local -a _op_arguments
        _op_arguments=(
          "template_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getRecurringTemplate)
        local -a _op_arguments
        _op_arguments=(
          "template_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listRecurringTemplates)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyReorderProposal)
        local -a _op_arguments
        _op_arguments=(
                    "configuredOnly=true:[QUERY] Only include products with a reorder point configured (&#39;min_stock&#39;)."
          "configuredOnly=false:[QUERY] Only include products with a reorder point configured (&#39;min_stock&#39;)."
"warehouseId=:[QUERY] Limit to a single warehouse id."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getReorderProposal)
        local -a _op_arguments
        _op_arguments=(
                    "configuredOnly=true:[QUERY] Only include products with a reorder point configured (&#39;min_stock&#39;)."
          "configuredOnly=false:[QUERY] Only include products with a reorder point configured (&#39;min_stock&#39;)."
"warehouseId=:[QUERY] Limit to a single warehouse id."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyReplenishments)
        local -a _op_arguments
        _op_arguments=(
                    "targetWarehouseId=:[QUERY] Warehouse to be replenished. Defaults to the tenant&#39;s default warehouse."
"sourceWarehouseId=:[QUERY] Restrict source warehouses to this id."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getReplenishments)
        local -a _op_arguments
        _op_arguments=(
                    "targetWarehouseId=:[QUERY] Warehouse to be replenished. Defaults to the tenant&#39;s default warehouse."
"sourceWarehouseId=:[QUERY] Restrict source warehouses to this id."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      bilanzReportApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
"month=:[QUERY] "
"date_from=:[QUERY] "
"date_to=:[QUERY] "
"page=:[QUERY] "
"page_size=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      guvReportApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
"month=:[QUERY] "
"date_from=:[QUERY] "
"date_to=:[QUERY] "
"page=:[QUERY] "
"page_size=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      kontenansichtReportApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
"month=:[QUERY] "
"date_from=:[QUERY] "
"date_to=:[QUERY] "
"page=:[QUERY] "
"page_size=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      umsatzsteuerReportApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
"month=:[QUERY] "
"date_from=:[QUERY] "
"date_to=:[QUERY] "
"page=:[QUERY] "
"page_size=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createReturnOrder)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteReturnOrder)
        local -a _op_arguments
        _op_arguments=(
          "return_order_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getReturnOrder)
        local -a _op_arguments
        _op_arguments=(
          "return_order_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listReturnOrders)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"status=:[QUERY] "
"customer_name=:[QUERY] "
"order_number=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      returnLogisticsQueue)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      returnLogisticsSummary)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateReturnOrder)
        local -a _op_arguments
        _op_arguments=(
          "return_order_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateReturnOrderStatus)
        local -a _op_arguments
        _op_arguments=(
          "return_order_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      convertRfq)
        local -a _op_arguments
        _op_arguments=(
          "rfq_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createRfq)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteRfq)
        local -a _op_arguments
        _op_arguments=(
          "rfq_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getRfq)
        local -a _op_arguments
        _op_arguments=(
          "rfq_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listRfqs)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"status=:[QUERY] "
"supplier_name=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateRfq)
        local -a _op_arguments
        _op_arguments=(
          "rfq_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateRfqStatus)
        local -a _op_arguments
        _op_arguments=(
          "rfq_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      globalSearch)
        local -a _op_arguments
        _op_arguments=(
                    "q=:[QUERY] Search text (min 2 chars)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      myPermissions)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createServiceAssignment)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteServiceAssignment)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getServiceAssignment)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getServiceAssignments)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateServiceAssignment)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createServiceJob)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteServiceJob)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getServiceJob)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getServiceJobs)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateServiceJob)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createShareholder)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteShareholder)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getShareholder)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getShareholders)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateShareholder)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createShipment)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createShipmentFromOrder)
        local -a _op_arguments
        _op_arguments=(
          "order_number=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteShipment)
        local -a _op_arguments
        _op_arguments=(
          "shipment_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getShipment)
        local -a _op_arguments
        _op_arguments=(
          "shipment_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listShipments)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      trackOrderPublic)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      trackShipmentApi)
        local -a _op_arguments
        _op_arguments=(
          "shipment_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateShipmentStatus)
        local -a _op_arguments
        _op_arguments=(
          "shipment_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCredentialsApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getRatesApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listProvidersApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      saveCredentialsApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createShippingRule)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteShippingRule)
        local -a _op_arguments
        _op_arguments=(
          "rule_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getShippingRule)
        local -a _op_arguments
        _op_arguments=(
          "rule_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listShippingRules)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"country=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateShippingRule)
        local -a _op_arguments
        _op_arguments=(
          "rule_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createShippingThreshold)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteShippingThreshold)
        local -a _op_arguments
        _op_arguments=(
          "threshold_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getDeliverable)
        local -a _op_arguments
        _op_arguments=(
                    "productId=:[QUERY] "
"warehouseId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getShippingThreshold)
        local -a _op_arguments
        _op_arguments=(
          "threshold_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listShippingThresholds)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"product_id=:[QUERY] "
"warehouse_id=:[QUERY] "
"is_active=true:[QUERY] "
          "is_active=false:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateShippingThreshold)
        local -a _op_arguments
        _op_arguments=(
          "threshold_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      shopEditorSave)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createSilentPartner)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteSilentPartner)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getSilentPartner)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getSilentPartners)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateSilentPartner)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      stilleExportApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      stilleReportApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockMovement)
        local -a _op_arguments
        _op_arguments=(
          "movement_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listStockMovements)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"pageSize=:[QUERY] "
"productId=:[QUERY] "
"warehouseId=:[QUERY] "
"movementType=:[QUERY] "
"from=:[QUERY] Only movements on or after this date (inclusive)."
"to=:[QUERY] Only movements on or before this date (inclusive)."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createStockTransfer)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteStockTransfer)
        local -a _op_arguments
        _op_arguments=(
          "stock_transfer_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockTransfer)
        local -a _op_arguments
        _op_arguments=(
          "stock_transfer_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listStockTransfers)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"status=:[QUERY] "
"warehouse_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateStockTransferStatus)
        local -a _op_arguments
        _op_arguments=(
          "stock_transfer_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      shippingSuitabilityApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createSupplierCondition)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteSupplierCondition)
        local -a _op_arguments
        _op_arguments=(
          "supplier_condition_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getSupplierCondition)
        local -a _op_arguments
        _op_arguments=(
          "supplier_condition_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listSupplierConditions)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"supplier_contact_id=:[QUERY] "
"search=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateSupplierCondition)
        local -a _op_arguments
        _op_arguments=(
          "supplier_condition_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createSupplierInvoice)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteSupplierInvoice)
        local -a _op_arguments
        _op_arguments=(
          "supplier_invoice_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getSupplierInvoice)
        local -a _op_arguments
        _op_arguments=(
          "supplier_invoice_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listSupplierInvoices)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"status=:[QUERY] "
"purchase_order_id=:[QUERY] "
"supplier_name=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateSupplierInvoice)
        local -a _op_arguments
        _op_arguments=(
          "supplier_invoice_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateSupplierInvoiceStatus)
        local -a _op_arguments
        _op_arguments=(
          "supplier_invoice_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createChannelApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteChannelApi)
        local -a _op_arguments
        _op_arguments=(
          "channel_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listChannelsApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateChannelApi)
        local -a _op_arguments
        _op_arguments=(
          "channel_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTicketApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTicketApi)
        local -a _op_arguments
        _op_arguments=(
          "ticket_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTicketApi)
        local -a _op_arguments
        _op_arguments=(
          "ticket_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listTicketsApi)
        local -a _op_arguments
        _op_arguments=(
                    "status=:[QUERY] "
"priority=:[QUERY] "
"assigned_to=:[QUERY] "
"channel_type=:[QUERY] "
"customer_id=:[QUERY] "
"search=:[QUERY] "
"page=:[QUERY] "
"page_size=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTicketApi)
        local -a _op_arguments
        _op_arguments=(
          "ticket_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTaxRate)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTaxRate)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listTaxRates)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTaxRate)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantSettings)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTenantSettings)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listMessagesApi)
        local -a _op_arguments
        _op_arguments=(
          "ticket_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sendMessageApi)
        local -a _op_arguments
        _op_arguments=(
          "ticket_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      clockInTimeEntry)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      clockOutTimeEntry)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getLaborCosts)
        local -a _op_arguments
        _op_arguments=(
                    "from=:[QUERY] "
"to=:[QUERY] "
"group_by=:[QUERY] One of \&quot;employee\&quot;, \&quot;order\&quot; or \&quot;day\&quot;."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listTimeEntries)
        local -a _op_arguments
        _op_arguments=(
                    "from=:[QUERY] "
"to=:[QUERY] "
"active=true:[QUERY] Only currently running shifts (clock_in set, clock_out null)."
          "active=false:[QUERY] Only currently running shifts (clock_in set, clock_out null)."
"employee_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTrainingAssignment)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTrainingAssignment)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTrainingAssignment)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTrainingAssignments)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"include_deleted=true:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          "include_deleted=false:[QUERY] Soft-delete entities: set true to include rows with &#39;deleted_at&#39; set."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTrainingAssignment)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getMyTrainings)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTrainingContent)
        local -a _op_arguments
        _op_arguments=(
          "code=:[PATH] Training code, e.g. data_privacy"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTrainingOverview)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      submitTrainingResult)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      changePassword)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTeam)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      generateApiKey)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      inviteUser)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listTeams)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeUserFromOrg)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateProfile)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      userProfile)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      userTenants)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getUser)
        local -a _op_arguments
        _op_arguments=(
          "user_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listUsers)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeUser)
        local -a _op_arguments
        _op_arguments=(
          "user_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateUserPermissions)
        local -a _op_arguments
        _op_arguments=(
          "user_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateUserRole)
        local -a _op_arguments
        _op_arguments=(
          "user_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      jahresustApi)
        local -a _op_arguments
        _op_arguments=(
                    "year=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      ustvaApi)
        local -a _op_arguments
        _op_arguments=(
                    "zeitraum=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createVoucher)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteVoucher)
        local -a _op_arguments
        _op_arguments=(
          "voucher_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVoucher)
        local -a _op_arguments
        _op_arguments=(
          "voucher_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listVouchers)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"voucher_type=:[QUERY] "
"voucher_status=:[QUERY] "
"contact_name=:[QUERY] "
"date_from=:[QUERY] "
"date_to=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateVoucher)
        local -a _op_arguments
        _op_arguments=(
          "voucher_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      voucherRestore)
        local -a _op_arguments
        _op_arguments=(
          "voucher_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createWarehouse)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteWarehouse)
        local -a _op_arguments
        _op_arguments=(
          "warehouse_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getWarehouse)
        local -a _op_arguments
        _op_arguments=(
          "warehouse_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listWarehouses)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] "
"page_size=:[QUERY] "
"search=:[QUERY] "
"is_active=true:[QUERY] "
          "is_active=false:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateWarehouse)
        local -a _op_arguments
        _op_arguments=(
          "warehouse_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createWarehouseStock)
        local -a _op_arguments
        _op_arguments=(
          "warehouse_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteWarehouseStock)
        local -a _op_arguments
        _op_arguments=(
          "warehouse_id=:[PATH] "
"product_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listWarehouseStock)
        local -a _op_arguments
        _op_arguments=(
          "warehouse_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateWarehouseStock)
        local -a _op_arguments
        _op_arguments=(
          "warehouse_id=:[PATH] "
"product_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createSubscription)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteSubscription)
        local -a _op_arguments
        _op_arguments=(
          "subscription_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      emitApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listEvent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listSubscriptions)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateSubscription)
        local -a _op_arguments
        _op_arguments=(
          "subscription_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      listWorkflowsApi)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      setWorkflowEnabledApi)
        local -a _op_arguments
        _op_arguments=(
          "workflow_id=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      generateZugferdApi)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
          "supplier_name=:[QUERY] "
"supplier_street=:[QUERY] "
"supplier_city=:[QUERY] "
"supplier_zip=:[QUERY] "
"supplier_country=:[QUERY] "
"supplier_vat_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
    esac
    ;;

esac

return ret
