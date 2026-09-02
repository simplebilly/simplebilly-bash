# SimpleBilly API Bash client

## Overview

This is a Bash client script for accessing SimpleBilly API service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x 

# Print the list of operations available on the service
$ ./ -h

# Print the service description
$ ./ --about

# Print detailed information about specific operation
$ ./ <operationId> -h

# Make GET request
./ --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
 -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
$  --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
$  --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image

You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash

The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source .bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp .bash-completion /etc/bash-completion.d/
```

#### OS X

On OSX you might need to install bash-completion using Homebrew:

```shell
brew install bash-completion
```

and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh

In Zsh, the generated `_` Zsh completion file must be copied to one of the folders under `$FPATH` variable.

## Documentation for API Endpoints

All URIs are relative to **

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AbsenceApi* | [**createAbsence**](docs/AbsenceApi.md#createabsence) | **POST** /api/v1/absences | 
*AbsenceApi* | [**deleteAbsence**](docs/AbsenceApi.md#deleteabsence) | **DELETE** /api/v1/absences/{id} | 
*AbsenceApi* | [**getAbsence**](docs/AbsenceApi.md#getabsence) | **GET** /api/v1/absences/{id} | 
*AbsenceApi* | [**getAbsences**](docs/AbsenceApi.md#getabsences) | **GET** /api/v1/absences/ | 
*AbsenceApi* | [**updateAbsence**](docs/AbsenceApi.md#updateabsence) | **PUT** /api/v1/absences/{id} | 
*ActivityApi* | [**createActivity**](docs/ActivityApi.md#createactivity) | **POST** /api/v1/activities | 
*ActivityApi* | [**deleteActivity**](docs/ActivityApi.md#deleteactivity) | **DELETE** /api/v1/activities/{activity_id} | 
*ActivityApi* | [**getActivity**](docs/ActivityApi.md#getactivity) | **GET** /api/v1/activities/{activity_id} | 
*ActivityApi* | [**listActivities**](docs/ActivityApi.md#listactivities) | **GET** /api/v1/activities/ | 
*ActivityApi* | [**updateActivity**](docs/ActivityApi.md#updateactivity) | **PUT** /api/v1/activities/{activity_id} | 
*ActivityApi* | [**updateActivityStatus**](docs/ActivityApi.md#updateactivitystatus) | **PUT** /api/v1/activities/{activity_id}/status | 
*AdminApi* | [**triggerMirror**](docs/AdminApi.md#triggermirror) | **POST** /api/v1/admin/storage/mirror | 
*AiApi* | [**aiSuggestApi**](docs/AiApi.md#aisuggestapi) | **POST** /api/v1/support/ai/suggest | 
*AiApi* | [**createWorkerApi**](docs/AiApi.md#createworkerapi) | **POST** /api/v1/support/ai/workers | 
*AiApi* | [**listWorkersApi**](docs/AiApi.md#listworkersapi) | **GET** /api/v1/support/ai/workers | 
*AiApi* | [**runWorkerApi**](docs/AiApi.md#runworkerapi) | **POST** /api/v1/support/ai/workers/{worker_id}/run | 
*AnlageEksApi* | [**eksApi**](docs/AnlageEksApi.md#eksapi) | **GET** /api/v1/bookkeeping/eks | 
*AnlageGApi* | [**anlageGApi**](docs/AnlageGApi.md#anlagegapi) | **GET** /api/v1/bookkeeping/anlage-g | 
*AnlageSApi* | [**anlageSApi**](docs/AnlageSApi.md#anlagesapi) | **GET** /api/v1/bookkeeping/anlage-s | 
*AttachmentApi* | [**attachmentRestore**](docs/AttachmentApi.md#attachmentrestore) | **POST** /api/v1/attachments/{id}/restore | 
*AttachmentApi* | [**createAttachment**](docs/AttachmentApi.md#createattachment) | **POST** /api/v1/attachments | 
*AttachmentApi* | [**deleteAttachment**](docs/AttachmentApi.md#deleteattachment) | **DELETE** /api/v1/attachments/{id} | 
*AttachmentApi* | [**getAttachment**](docs/AttachmentApi.md#getattachment) | **GET** /api/v1/attachments/{id} | 
*AttachmentApi* | [**listAttachments**](docs/AttachmentApi.md#listattachments) | **GET** /api/v1/attachments/ | 
*AttachmentApi* | [**saveAttachmentOcrText**](docs/AttachmentApi.md#saveattachmentocrtext) | **PUT** /api/v1/attachments/{attachment_id}/ocr-text | Persist client-side OCR output for an attachment.
*AttachmentVersionApi* | [**createAttachmentVersion**](docs/AttachmentVersionApi.md#createattachmentversion) | **POST** /api/v1/attachments/{attachment_id}/versions | 
*AttachmentVersionApi* | [**listAttachmentVersions**](docs/AttachmentVersionApi.md#listattachmentversions) | **GET** /api/v1/attachments/{attachment_id}/versions | 
*AttachmentVersionApi* | [**restoreAttachmentVersion**](docs/AttachmentVersionApi.md#restoreattachmentversion) | **POST** /api/v1/attachments/{attachment_id}/versions/{version_id}/restore | 
*AuthApi* | [**acceptInvite**](docs/AuthApi.md#acceptinvite) | **POST** /auth/accept-invite | Accept an invite: create the account (or reuse an existing one) and join
the inviting tenant. The invite token proves control of the mailbox.
*AuthApi* | [**forgotPassword**](docs/AuthApi.md#forgotpassword) | **POST** /auth/forgot-password | Send a password reset email to the user
*AuthApi* | [**login**](docs/AuthApi.md#login) | **POST** /auth/login | Authenticate a user with email + password (optional TOTP)
*AuthApi* | [**logout**](docs/AuthApi.md#logout) | **POST** /auth/logout | Log out the current user (kills the assay session)
*AuthApi* | [**magicLinkLogin**](docs/AuthApi.md#magiclinklogin) | **POST** /auth/magic-link | Request a magic link login (sends an email with a one-time link)
*AuthApi* | [**magicLinkVerify**](docs/AuthApi.md#magiclinkverify) | **POST** /auth/magic-link/verify | Verify a magic link token and log the user in
*AuthApi* | [**register**](docs/AuthApi.md#register) | **POST** /auth/register | Register a new user account
*AuthApi* | [**resetPassword**](docs/AuthApi.md#resetpassword) | **POST** /auth/reset-password | Reset the user&#39;s password using a reset token
*AuthApi* | [**totpEnable**](docs/AuthApi.md#totpenable) | **POST** /auth/totp/enable | Enable TOTP two-factor authentication by verifying a code
*AuthApi* | [**totpSetup**](docs/AuthApi.md#totpsetup) | **GET** /auth/totp/setup | Set up TOTP two-factor authentication (generates secret + backup codes)
*AuthApi* | [**verifyEmail**](docs/AuthApi.md#verifyemail) | **POST** /auth/verify-email | Verify a user&#39;s email address using a verification token
*AutomationsApi* | [**listAutomations**](docs/AutomationsApi.md#listautomations) | **GET** /api/v1/automations | 
*AutomationsApi* | [**triggerAutomation**](docs/AutomationsApi.md#triggerautomation) | **POST** /api/v1/automations/{key}/trigger | 
*AutomationsApi* | [**updateAutomation**](docs/AutomationsApi.md#updateautomation) | **PUT** /api/v1/automations/{key} | 
*BankingApi* | [**bankLookupApi**](docs/BankingApi.md#banklookupapi) | **GET** /api/v1/bookkeeping/banking/lookup | 
*BankingApi* | [**bankTransactionsApi**](docs/BankingApi.md#banktransactionsapi) | **GET** /api/v1/bookkeeping/banking/transactions | 
*BankingApi* | [**hebesatzLookupApi**](docs/BankingApi.md#hebesatzlookupapi) | **GET** /api/v1/bookkeeping/hebesatz | 
*BillingApi* | [**getPlans**](docs/BillingApi.md#getplans) | **GET** /api/v1/plans | All canonical plans (free/starter/business/enterprise) — the single
source of truth lives in &#39;crate::saasy::plans&#39;, matching marketing.
*BillingApi* | [**getQuotaApi**](docs/BillingApi.md#getquotaapi) | **GET** /api/v1/quota | Effective limits + current usage for the calling tenant.
*BillingApi* | [**getSubscriptionApi**](docs/BillingApi.md#getsubscriptionapi) | **GET** /api/v1/subscription | 
*BillingApi* | [**getUsageApi**](docs/BillingApi.md#getusageapi) | **GET** /api/v1/usage | 
*BillingApi* | [**paddleSubscriptionWebhook**](docs/BillingApi.md#paddlesubscriptionwebhook) | **POST** /api/webhooks/paddle/subscription | Paddle Billing subscription webhook. Verifies the &#39;Paddle-Signature&#39;
header (HMAC-SHA256 over &#39;\&quot;{ts}:{raw_body}\&quot;&#39; with the webhook secret),
then updates &#39;billing_info&#39; and &#39;tenants.plan&#39; for the tenant identified
by the subscription &#39;custom_data&#39; (JSON &#39;{\&quot;tenant_id\&quot;: \&quot;...\&quot;}&#39; or a bare
tenant UUID).
*BillingApi* | [**putQuotaApi**](docs/BillingApi.md#putquotaapi) | **PUT** /api/v1/quota | Write the per-tenant quota override (&#39;admin:settings&#39;). An empty object
clears the override.
*BomApi* | [**createBom**](docs/BomApi.md#createbom) | **POST** /api/v1/boms | 
*BomApi* | [**deleteBom**](docs/BomApi.md#deletebom) | **DELETE** /api/v1/boms/{bom_id} | 
*BomApi* | [**getBom**](docs/BomApi.md#getbom) | **GET** /api/v1/boms/{bom_id} | 
*BomApi* | [**listBoms**](docs/BomApi.md#listboms) | **GET** /api/v1/boms/ | 
*BomApi* | [**updateBom**](docs/BomApi.md#updatebom) | **PUT** /api/v1/boms/{bom_id} | 
*BookkeepingApi* | [**allocatePaymentApi**](docs/BookkeepingApi.md#allocatepaymentapi) | **POST** /api/v1/payments/allocate | Allocate a payment to an invoice
*BookkeepingApi* | [**bwaReportApi**](docs/BookkeepingApi.md#bwareportapi) | **GET** /api/v1/bookkeeping/bwa | Get BWA (Betriebswirtschaftliche Auswertung) report
*BookkeepingApi* | [**elsterStatusApi**](docs/BookkeepingApi.md#elsterstatusapi) | **GET** /api/v1/bookkeeping/elster/status | 
*BookkeepingApi* | [**elsterValidateApi**](docs/BookkeepingApi.md#elstervalidateapi) | **POST** /api/v1/bookkeeping/ustva/elster-validate | 
*BookkeepingApi* | [**elsterXmlApi**](docs/BookkeepingApi.md#elsterxmlapi) | **GET** /api/v1/bookkeeping/ustva/elster-xml | 
*BookkeepingApi* | [**getCashflow**](docs/BookkeepingApi.md#getcashflow) | **GET** /api/v1/bookkeeping/cashflow | GET /api/v1/bookkeeping/cashflow
Returns operating, investing, and financing cashflow for the given period.
*BookkeepingApi* | [**getLiquidity**](docs/BookkeepingApi.md#getliquidity) | **GET** /api/v1/bookkeeping/liquidity | GET /api/v1/bookkeeping/liquidity
Returns current liquidity position with ratios.
*BookkeepingApi* | [**getOpenInvoicesApi**](docs/BookkeepingApi.md#getopeninvoicesapi) | **GET** /api/v1/payments/open-invoices/{customer_id} | Get open invoices for a customer
*BookkeepingApi* | [**getVerfahrensdokumentation**](docs/BookkeepingApi.md#getverfahrensdokumentation) | **GET** /api/v1/bookkeeping/verfahrensdokumentation | GET /api/v1/bookkeeping/verfahrensdokumentation
Returns the complete compliance catalog of all documented modules.
*BookkeepingApi* | [**runDunningApi**](docs/BookkeepingApi.md#rundunningapi) | **POST** /api/v1/bookkeeping/dunning | 
*BudgetsApi* | [**budgetsApi**](docs/BudgetsApi.md#budgetsapi) | **GET** /api/v1/bookkeeping/budgets | 
*BudgetsApi* | [**upsertBudgetGoalApi**](docs/BudgetsApi.md#upsertbudgetgoalapi) | **PUT** /api/v1/bookkeeping/budgets/goals/{category} | 
*ComplianceTrainingApi* | [**createComplianceTraining**](docs/ComplianceTrainingApi.md#createcompliancetraining) | **POST** /api/v1/compliance-trainings | 
*ComplianceTrainingApi* | [**deleteComplianceTraining**](docs/ComplianceTrainingApi.md#deletecompliancetraining) | **DELETE** /api/v1/compliance-trainings/{id} | 
*ComplianceTrainingApi* | [**getComplianceTraining**](docs/ComplianceTrainingApi.md#getcompliancetraining) | **GET** /api/v1/compliance-trainings/{id} | 
*ComplianceTrainingApi* | [**getComplianceTrainings**](docs/ComplianceTrainingApi.md#getcompliancetrainings) | **GET** /api/v1/compliance-trainings/ | 
*ComplianceTrainingApi* | [**updateComplianceTraining**](docs/ComplianceTrainingApi.md#updatecompliancetraining) | **PUT** /api/v1/compliance-trainings/{id} | 
*ContactApi* | [**contactSchema**](docs/ContactApi.md#contactschema) | **GET** /api/v1/contacts/schema | Serve JSON Schema for client-side validation
*ContactApi* | [**contactTimeline**](docs/ContactApi.md#contacttimeline) | **GET** /api/v1/contacts/{contact_id}/timeline | Get the full per-contact timeline (Xentral §4.6/4.7).
*ContactApi* | [**createContact**](docs/ContactApi.md#createcontact) | **POST** /api/v1/contacts | Create contact
*ContactApi* | [**deleteContact**](docs/ContactApi.md#deletecontact) | **DELETE** /api/v1/contacts/{contact_id} | Soft-delete contact
*ContactApi* | [**getContact**](docs/ContactApi.md#getcontact) | **GET** /api/v1/contacts/{contact_id} | Get single contact
*ContactApi* | [**listContacts**](docs/ContactApi.md#listcontacts) | **GET** /api/v1/contacts | List contacts with search, type filter, and pagination
*ContactApi* | [**salesVolume**](docs/ContactApi.md#salesvolume) | **GET** /api/v1/contacts/sales-volume | Sales volume per contact
*ContactApi* | [**updateContact**](docs/ContactApi.md#updatecontact) | **PUT** /api/v1/contacts/{contact_id} | Update contact
*CouponApi* | [**couponRestore**](docs/CouponApi.md#couponrestore) | **POST** /api/v1/coupons/{coupon_id}/restore | 
*CouponApi* | [**createCoupon**](docs/CouponApi.md#createcoupon) | **POST** /api/v1/coupons | 
*CouponApi* | [**deleteCoupon**](docs/CouponApi.md#deletecoupon) | **DELETE** /api/v1/coupons/{coupon_id} | 
*CouponApi* | [**getCoupon**](docs/CouponApi.md#getcoupon) | **GET** /api/v1/coupons/{coupon_id} | 
*CouponApi* | [**listCoupons**](docs/CouponApi.md#listcoupons) | **GET** /api/v1/coupons/ | 
*CouponApi* | [**updateCoupon**](docs/CouponApi.md#updatecoupon) | **PUT** /api/v1/coupons/{coupon_id} | 
*CreateSepaDirectDebitApi* | [**createSepaDirectDebitApi**](docs/CreateSepaDirectDebitApi.md#createsepadirectdebitapi) | **POST** /api/v1/bookkeeping/sepa-direct-debit | 
*CreditNoteApi* | [**createCreditNote**](docs/CreditNoteApi.md#createcreditnote) | **POST** /api/v1/credit-notes | 
*CreditNoteApi* | [**downloadCreditNotePdf**](docs/CreditNoteApi.md#downloadcreditnotepdf) | **GET** /api/v1/credit-notes/{credit_note_id}/pdf | 
*CreditNoteApi* | [**getCreditNote**](docs/CreditNoteApi.md#getcreditnote) | **GET** /api/v1/credit-notes/{credit_note_id} | 
*CreditNoteApi* | [**listCreditNotes**](docs/CreditNoteApi.md#listcreditnotes) | **GET** /api/v1/credit-notes/ | 
*CustomerApi* | [**createCustomer**](docs/CustomerApi.md#createcustomer) | **POST** /api/v1/customers | 
*CustomerApi* | [**customerRestore**](docs/CustomerApi.md#customerrestore) | **POST** /api/v1/customers/{customer_id}/restore | 
*CustomerApi* | [**deleteCustomer**](docs/CustomerApi.md#deletecustomer) | **DELETE** /api/v1/customers/{customer_id} | 
*CustomerApi* | [**getCustomer**](docs/CustomerApi.md#getcustomer) | **GET** /api/v1/customers/{customer_id} | 
*CustomerApi* | [**getCustomers**](docs/CustomerApi.md#getcustomers) | **GET** /api/v1/customers/ | 
*CustomerApi* | [**updateCustomer**](docs/CustomerApi.md#updatecustomer) | **PUT** /api/v1/customers/{customer_id} | 
*CustomerCommunicationApi* | [**createCommunication**](docs/CustomerCommunicationApi.md#createcommunication) | **POST** /api/v1/communications | 
*CustomerCommunicationApi* | [**customercommunicationRestore**](docs/CustomerCommunicationApi.md#customercommunicationrestore) | **POST** /api/v1/communications/{communication_id}/restore | 
*CustomerCommunicationApi* | [**deleteCommunication**](docs/CustomerCommunicationApi.md#deletecommunication) | **DELETE** /api/v1/communications/{communication_id} | 
*CustomerCommunicationApi* | [**getCommunication**](docs/CustomerCommunicationApi.md#getcommunication) | **GET** /api/v1/communications/{communication_id} | 
*CustomerCommunicationApi* | [**getContactHistory**](docs/CustomerCommunicationApi.md#getcontacthistory) | **GET** /api/v1/contacts/{contact_id}/communications | 
*CustomerCommunicationApi* | [**listCommunications**](docs/CustomerCommunicationApi.md#listcommunications) | **GET** /api/v1/communications/ | 
*CustomerCommunicationApi* | [**updateCommunication**](docs/CustomerCommunicationApi.md#updatecommunication) | **PUT** /api/v1/communications/{communication_id} | 
*CustomerGroupApi* | [**addGroupMembers**](docs/CustomerGroupApi.md#addgroupmembers) | **POST** /api/v1/customer-groups/{customer_group_id}/members | 
*CustomerGroupApi* | [**createCustomerGroup**](docs/CustomerGroupApi.md#createcustomergroup) | **POST** /api/v1/customer-groups | 
*CustomerGroupApi* | [**deleteCustomerGroup**](docs/CustomerGroupApi.md#deletecustomergroup) | **DELETE** /api/v1/customer-groups/{customer_group_id} | 
*CustomerGroupApi* | [**getCustomerGroup**](docs/CustomerGroupApi.md#getcustomergroup) | **GET** /api/v1/customer-groups/{customer_group_id} | 
*CustomerGroupApi* | [**listCustomerGroups**](docs/CustomerGroupApi.md#listcustomergroups) | **GET** /api/v1/customer-groups/ | 
*CustomerGroupApi* | [**updateCustomerGroup**](docs/CustomerGroupApi.md#updatecustomergroup) | **PUT** /api/v1/customer-groups/{customer_group_id} | 
*DatevApi* | [**datevExportApi**](docs/DatevApi.md#datevexportapi) | **GET** /api/v1/bookkeeping/datev/export | Export bookkeeping data as DATEV CSV
*DatevApi* | [**datevPreviewApi**](docs/DatevApi.md#datevpreviewapi) | **GET** /api/v1/bookkeeping/datev/preview | Exported_datev_bookings: returns formed bookings for review
*DatevImportApi* | [**datevImportApi**](docs/DatevImportApi.md#datevimportapi) | **POST** /api/v1/bookkeeping/datev/import | 
*DeclarationApi* | [**createDeclaration**](docs/DeclarationApi.md#createdeclaration) | **POST** /api/v1/declarations | 
*DeclarationApi* | [**declarationRestore**](docs/DeclarationApi.md#declarationrestore) | **POST** /api/v1/declarations/{id}/restore | 
*DeclarationApi* | [**deleteDeclaration**](docs/DeclarationApi.md#deletedeclaration) | **DELETE** /api/v1/declarations/{id} | 
*DeclarationApi* | [**getDeclaration**](docs/DeclarationApi.md#getdeclaration) | **GET** /api/v1/declarations/{id} | 
*DeclarationApi* | [**getDeclarations**](docs/DeclarationApi.md#getdeclarations) | **GET** /api/v1/declarations/ | 
*DeclarationApi* | [**updateDeclaration**](docs/DeclarationApi.md#updatedeclaration) | **PUT** /api/v1/declarations/{id} | 
*DeliveryAppointmentApi* | [**createDeliveryAppointment**](docs/DeliveryAppointmentApi.md#createdeliveryappointment) | **POST** /api/v1/delivery-appointments | 
*DeliveryAppointmentApi* | [**deleteDeliveryAppointment**](docs/DeliveryAppointmentApi.md#deletedeliveryappointment) | **DELETE** /api/v1/delivery-appointments/{appointment_id} | 
*DeliveryAppointmentApi* | [**getDeliveryAppointment**](docs/DeliveryAppointmentApi.md#getdeliveryappointment) | **GET** /api/v1/delivery-appointments/{appointment_id} | 
*DeliveryAppointmentApi* | [**getPublicDeliveryAppointmentStatus**](docs/DeliveryAppointmentApi.md#getpublicdeliveryappointmentstatus) | **GET** /api/v1/public/delivery-appointments/status | Supplier/carrier checks appointment status (public, no auth). The
appointment is only revealed when email AND token match.
*DeliveryAppointmentApi* | [**listDeliveryAppointments**](docs/DeliveryAppointmentApi.md#listdeliveryappointments) | **GET** /api/v1/delivery-appointments | 
*DeliveryAppointmentApi* | [**requestPublicDeliveryAppointment**](docs/DeliveryAppointmentApi.md#requestpublicdeliveryappointment) | **POST** /api/v1/public/delivery-appointments/request | Supplier/carrier requests an inbound delivery slot (public, no auth).
The tenant is derived from the warehouse found by &#39;code&#39; — never from
the request.
*DeliveryAppointmentApi* | [**updateDeliveryAppointment**](docs/DeliveryAppointmentApi.md#updatedeliveryappointment) | **PUT** /api/v1/delivery-appointments/{appointment_id} | 
*DeliveryAppointmentApi* | [**updateDeliveryAppointmentStatus**](docs/DeliveryAppointmentApi.md#updatedeliveryappointmentstatus) | **PUT** /api/v1/delivery-appointments/{appointment_id}/status | 
*DeliveryDateApi* | [**createDeliveryDate**](docs/DeliveryDateApi.md#createdeliverydate) | **POST** /api/v1/delivery-dates | 
*DeliveryDateApi* | [**deleteDeliveryDate**](docs/DeliveryDateApi.md#deletedeliverydate) | **DELETE** /api/v1/delivery-dates/{delivery_date_id} | 
*DeliveryDateApi* | [**getDeliveryDate**](docs/DeliveryDateApi.md#getdeliverydate) | **GET** /api/v1/delivery-dates/{delivery_date_id} | 
*DeliveryDateApi* | [**getDeliveryPerformance**](docs/DeliveryDateApi.md#getdeliveryperformance) | **GET** /api/v1/delivery-dates/performance | On-time performance summary: how many promised delivery dates were met
within a period.
*DeliveryDateApi* | [**listDeliveryDates**](docs/DeliveryDateApi.md#listdeliverydates) | **GET** /api/v1/delivery-dates/ | 
*DeliveryDateApi* | [**updateDeliveryDate**](docs/DeliveryDateApi.md#updatedeliverydate) | **PUT** /api/v1/delivery-dates/{delivery_date_id} | 
*DeliveryDateApi* | [**updateDeliveryDateStatus**](docs/DeliveryDateApi.md#updatedeliverydatestatus) | **PUT** /api/v1/delivery-dates/{delivery_date_id}/status | 
*DeliveryNoteApi* | [**createDeliveryNote**](docs/DeliveryNoteApi.md#createdeliverynote) | **POST** /api/v1/delivery-notes | 
*DeliveryNoteApi* | [**deleteDeliveryNote**](docs/DeliveryNoteApi.md#deletedeliverynote) | **DELETE** /api/v1/delivery-notes/{delivery_note_id} | 
*DeliveryNoteApi* | [**deliverynoteRestore**](docs/DeliveryNoteApi.md#deliverynoterestore) | **POST** /api/v1/delivery-notes/{delivery_note_id}/restore | 
*DeliveryNoteApi* | [**downloadDeliveryNotePdf**](docs/DeliveryNoteApi.md#downloaddeliverynotepdf) | **GET** /api/v1/delivery-notes/{delivery_note_id}/pdf | 
*DeliveryNoteApi* | [**getDeliveryNote**](docs/DeliveryNoteApi.md#getdeliverynote) | **GET** /api/v1/delivery-notes/{delivery_note_id} | 
*DeliveryNoteApi* | [**listDeliveryNotes**](docs/DeliveryNoteApi.md#listdeliverynotes) | **GET** /api/v1/delivery-notes/ | 
*DeliveryNoteApi* | [**pursueDeliveryNote**](docs/DeliveryNoteApi.md#pursuedeliverynote) | **POST** /api/v1/delivery-notes/{delivery_note_id}/pursue | 
*DownPaymentInvoiceApi* | [**downloadDownPaymentInvoicePdf**](docs/DownPaymentInvoiceApi.md#downloaddownpaymentinvoicepdf) | **GET** /api/v1/down-payment-invoices/{id}/pdf | 
*DownPaymentInvoiceApi* | [**getDownPaymentInvoice**](docs/DownPaymentInvoiceApi.md#getdownpaymentinvoice) | **GET** /api/v1/down-payment-invoices/{id} | 
*DownPaymentInvoiceApi* | [**listDownPaymentInvoices**](docs/DownPaymentInvoiceApi.md#listdownpaymentinvoices) | **GET** /api/v1/down-payment-invoices/ | 
*EbilanzApi* | [**ebilanzReportApi**](docs/EbilanzApi.md#ebilanzreportapi) | **GET** /api/v1/bookkeeping/ebilanz | 
*EbilanzApi* | [**ebilanzXbrlExportApi**](docs/EbilanzApi.md#ebilanzxbrlexportapi) | **GET** /api/v1/bookkeeping/ebilanz/xbrl | 
*EmailTemplateApi* | [**createEmailTemplate**](docs/EmailTemplateApi.md#createemailtemplate) | **POST** /api/v1/email-templates | 
*EmailTemplateApi* | [**deleteEmailTemplate**](docs/EmailTemplateApi.md#deleteemailtemplate) | **DELETE** /api/v1/email-templates/{email_template_id} | 
*EmailTemplateApi* | [**getEmailTemplate**](docs/EmailTemplateApi.md#getemailtemplate) | **GET** /api/v1/email-templates/{email_template_id} | 
*EmailTemplateApi* | [**listEmailTemplates**](docs/EmailTemplateApi.md#listemailtemplates) | **GET** /api/v1/email-templates/ | 
*EmailTemplateApi* | [**renderEmailTemplate**](docs/EmailTemplateApi.md#renderemailtemplate) | **POST** /api/v1/email-templates/{email_template_id}/render | 
*EmailTemplateApi* | [**updateEmailTemplate**](docs/EmailTemplateApi.md#updateemailtemplate) | **PUT** /api/v1/email-templates/{email_template_id} | 
*EmissionsApi* | [**createEmissionEntryApi**](docs/EmissionsApi.md#createemissionentryapi) | **POST** /api/v1/bookkeeping/emissions/entries | 
*EmissionsApi* | [**createEmissionTargetApi**](docs/EmissionsApi.md#createemissiontargetapi) | **POST** /api/v1/bookkeeping/emissions/targets | 
*EmissionsApi* | [**deleteEmissionEntryApi**](docs/EmissionsApi.md#deleteemissionentryapi) | **DELETE** /api/v1/bookkeeping/emissions/entries/{id} | 
*EmissionsApi* | [**deleteEmissionTargetApi**](docs/EmissionsApi.md#deleteemissiontargetapi) | **DELETE** /api/v1/bookkeeping/emissions/targets/{id} | 
*EmissionsApi* | [**emissionsEntriesApi**](docs/EmissionsApi.md#emissionsentriesapi) | **GET** /api/v1/bookkeeping/emissions/entries | 
*EmissionsApi* | [**emissionsExportApi**](docs/EmissionsApi.md#emissionsexportapi) | **GET** /api/v1/bookkeeping/emissions/export | 
*EmissionsApi* | [**emissionsFactorsApi**](docs/EmissionsApi.md#emissionsfactorsapi) | **GET** /api/v1/bookkeeping/emissions/factors | 
*EmissionsApi* | [**emissionsReportApi**](docs/EmissionsApi.md#emissionsreportapi) | **GET** /api/v1/bookkeeping/emissions/report | 
*EmissionsApi* | [**emissionsTargetsApi**](docs/EmissionsApi.md#emissionstargetsapi) | **GET** /api/v1/bookkeeping/emissions/targets | 
*EmployeeApi* | [**createEmployee**](docs/EmployeeApi.md#createemployee) | **POST** /api/v1/employees | 
*EmployeeApi* | [**deleteEmployee**](docs/EmployeeApi.md#deleteemployee) | **DELETE** /api/v1/employees/{id} | 
*EmployeeApi* | [**employeeRestore**](docs/EmployeeApi.md#employeerestore) | **POST** /api/v1/employees/{id}/restore | 
*EmployeeApi* | [**getEmployee**](docs/EmployeeApi.md#getemployee) | **GET** /api/v1/employees/{id} | 
*EmployeeApi* | [**getEmployeePayrollSummary**](docs/EmployeeApi.md#getemployeepayrollsummary) | **GET** /api/v1/employees/{id}/payroll-summary | 
*EmployeeApi* | [**getEmployees**](docs/EmployeeApi.md#getemployees) | **GET** /api/v1/employees/ | 
*EmployeeApi* | [**updateEmployee**](docs/EmployeeApi.md#updateemployee) | **PUT** /api/v1/employees/{id} | 
*EuerApi* | [**euerApi**](docs/EuerApi.md#euerapi) | **GET** /api/v1/bookkeeping/euer | 
*EuerApi* | [**euerKategorienApi**](docs/EuerApi.md#euerkategorienapi) | **GET** /api/v1/bookkeeping/euer/kategorien | 
*EventSubscriptionApi* | [**createEventSubscription**](docs/EventSubscriptionApi.md#createeventsubscription) | **POST** /api/v1/event-subscriptions | 
*EventSubscriptionApi* | [**deleteEventSubscription**](docs/EventSubscriptionApi.md#deleteeventsubscription) | **DELETE** /api/v1/event-subscriptions/{subscription_id} | 
*EventSubscriptionApi* | [**listEventSubscriptions**](docs/EventSubscriptionApi.md#listeventsubscriptions) | **GET** /api/v1/event-subscriptions/ | 
*FristenApi* | [**fristenApi**](docs/FristenApi.md#fristenapi) | **GET** /api/v1/bookkeeping/fristen | 
*GdprApi* | [**acceptDpa**](docs/GdprApi.md#acceptdpa) | **PUT** /api/v1/gdpr/dpa | Record DPA acceptance: sets dpa_accepted_at/by/version on the tenant
settings row (created with company-type defaults if missing).
*GdprApi* | [**accountErasure**](docs/GdprApi.md#accounterasure) | **POST** /api/v1/gdpr/account-erasure | Erase ALL personal data of the tenant (TOS §11: deletion 90 days after
termination).
*GdprApi* | [**erasureContact**](docs/GdprApi.md#erasurecontact) | **POST** /api/v1/gdpr/erasure/{contact_id} | Anonymize + soft-delete a contact: personal attributes are cleared, the
record itself is kept for GoBD retention (Art. 17(3)(e) DSGVO). The audit
trigger on &#39;contacts&#39; already records who/when.
*GdprApi* | [**exportContactData**](docs/GdprApi.md#exportcontactdata) | **GET** /api/v1/gdpr/export/{contact_id} | Art. 15 data-subject access export for a contact.
*GdprApi* | [**exportGdpr**](docs/GdprApi.md#exportgdpr) | **GET** /api/v1/gdpr/export | Export the current user&#39;s personal data (GDPR Art. 15/20).
*GdprApi* | [**getDpa**](docs/GdprApi.md#getdpa) | **GET** /api/v1/gdpr/dpa | Current DPA acceptance status (from tenant_settings).
*GenerateQrcodeApi* | [**generateQrcodeApi**](docs/GenerateQrcodeApi.md#generateqrcodeapi) | **GET** /api/v1/invoices/{id}/qrcode | 
*GenerateXrechnungApi* | [**generateXrechnungApi**](docs/GenerateXrechnungApi.md#generatexrechnungapi) | **GET** /api/v1/invoices/{id}/xrechnung | 
*GewerbesteuerApi* | [**gewerbesteuerApi**](docs/GewerbesteuerApi.md#gewerbesteuerapi) | **GET** /api/v1/bookkeeping/gewerbesteuer | 
*GewinnverwendungApi* | [**gewinnverwendungApi**](docs/GewinnverwendungApi.md#gewinnverwendungapi) | **GET** /api/v1/bookkeeping/gewinnverwendung | 
*GewinnverwendungApi* | [**gewinnverwendungExportApi**](docs/GewinnverwendungApi.md#gewinnverwendungexportapi) | **GET** /api/v1/bookkeeping/gewinnverwendung/export | 
*GezApi* | [**gezApi**](docs/GezApi.md#gezapi) | **GET** /api/v1/bookkeeping/gez | 
*GobdExportApi* | [**buchhalterCsvApi**](docs/GobdExportApi.md#buchhaltercsvapi) | **GET** /api/v1/bookkeeping/buchhalter-csv | 
*GobdExportApi* | [**gobdExportApi**](docs/GobdExportApi.md#gobdexportapi) | **GET** /api/v1/bookkeeping/gobd | GoBD/GDPdU export. Default: ZIP archive (&#39;index.xml&#39; + CSV tables, IDEA
format). &#39;?format&#x3D;csv&#39; returns the legacy single-journal CSV as JSON.
*GoodsReceiptApi* | [**createGoodsReceipt**](docs/GoodsReceiptApi.md#creategoodsreceipt) | **POST** /api/v1/goods-receipts | 
*GoodsReceiptApi* | [**deleteGoodsReceipt**](docs/GoodsReceiptApi.md#deletegoodsreceipt) | **DELETE** /api/v1/goods-receipts/{goods_receipt_id} | 
*GoodsReceiptApi* | [**getGoodsReceipt**](docs/GoodsReceiptApi.md#getgoodsreceipt) | **GET** /api/v1/goods-receipts/{goods_receipt_id} | 
*GoodsReceiptApi* | [**listGoodsReceipts**](docs/GoodsReceiptApi.md#listgoodsreceipts) | **GET** /api/v1/goods-receipts/ | 
*GroupFigureApi* | [**createGroupFigure**](docs/GroupFigureApi.md#creategroupfigure) | **POST** /api/v1/group-figures | 
*GroupFigureApi* | [**deleteGroupFigure**](docs/GroupFigureApi.md#deletegroupfigure) | **DELETE** /api/v1/group-figures/{year} | 
*GroupFigureApi* | [**getGroupFigure**](docs/GroupFigureApi.md#getgroupfigure) | **GET** /api/v1/group-figures/{year} | 
*GroupFigureApi* | [**getGroupFigures**](docs/GroupFigureApi.md#getgroupfigures) | **GET** /api/v1/group-figures/ | 
*GroupFigureApi* | [**updateGroupFigure**](docs/GroupFigureApi.md#updategroupfigure) | **PUT** /api/v1/group-figures/{year} | 
*ImportRunnerApi* | [**getImportStatus**](docs/ImportRunnerApi.md#getimportstatus) | **GET** /api/v1/import/{job_id} | 
*ImportRunnerApi* | [**startImport**](docs/ImportRunnerApi.md#startimport) | **POST** /api/v1/import/start | 
*ImportRunnerApi* | [**testImportConnection**](docs/ImportRunnerApi.md#testimportconnection) | **POST** /api/v1/import/test | 
*InstituteApi* | [**instituteStatusApi**](docs/InstituteApi.md#institutestatusapi) | **GET** /api/v1/bookkeeping/institute/status | 
*InstituteProfileApi* | [**getInstituteProfile**](docs/InstituteProfileApi.md#getinstituteprofile) | **GET** /api/v1/institute-profile | Current institute profile (created with defaults when missing).
*InstituteProfileApi* | [**updateInstituteProfile**](docs/InstituteProfileApi.md#updateinstituteprofile) | **PUT** /api/v1/institute-profile | Update the institute profile (institute_type and/or kapitalmarktorientiert).
*InventoryCountApi* | [**createInventoryCount**](docs/InventoryCountApi.md#createinventorycount) | **POST** /api/v1/inventory-counts | 
*InventoryCountApi* | [**deleteInventoryCount**](docs/InventoryCountApi.md#deleteinventorycount) | **DELETE** /api/v1/inventory-counts/{inventory_count_id} | 
*InventoryCountApi* | [**generateInventoryCount**](docs/InventoryCountApi.md#generateinventorycount) | **POST** /api/v1/inventory-counts/generate | 
*InventoryCountApi* | [**getInventoryCount**](docs/InventoryCountApi.md#getinventorycount) | **GET** /api/v1/inventory-counts/{inventory_count_id} | 
*InventoryCountApi* | [**listInventoryCounts**](docs/InventoryCountApi.md#listinventorycounts) | **GET** /api/v1/inventory-counts/ | 
*InventoryCountApi* | [**updateInventoryCount**](docs/InventoryCountApi.md#updateinventorycount) | **PUT** /api/v1/inventory-counts/{inventory_count_id} | 
*InventoryCountApi* | [**updateInventoryCountStatus**](docs/InventoryCountApi.md#updateinventorycountstatus) | **PUT** /api/v1/inventory-counts/{inventory_count_id}/status | 
*InventoryValueApi* | [**getInventoryValueApi**](docs/InventoryValueApi.md#getinventoryvalueapi) | **GET** /api/v1/bookkeeping/inventory-value | 
*InventoryValueApi* | [**recordInventoryValueApi**](docs/InventoryValueApi.md#recordinventoryvalueapi) | **POST** /api/v1/bookkeeping/inventory-value/record | 
*InvoiceApi* | [**createInvoice**](docs/InvoiceApi.md#createinvoice) | **POST** /api/v1/invoices | 
*InvoiceApi* | [**deleteInvoice**](docs/InvoiceApi.md#deleteinvoice) | **DELETE** /api/v1/invoices/{id} | 
*InvoiceApi* | [**downloadInvoicePdf**](docs/InvoiceApi.md#downloadinvoicepdf) | **GET** /api/v1/invoices/{id}/pdf | 
*InvoiceApi* | [**getInvoice**](docs/InvoiceApi.md#getinvoice) | **GET** /api/v1/invoices/{id} | 
*InvoiceApi* | [**getInvoicePdfUrl**](docs/InvoiceApi.md#getinvoicepdfurl) | **GET** /api/v1/invoices/{id}/pdf-url | 
*InvoiceApi* | [**getInvoices**](docs/InvoiceApi.md#getinvoices) | **GET** /api/v1/invoices/ | 
*InvoiceApi* | [**invoiceRestore**](docs/InvoiceApi.md#invoicerestore) | **POST** /api/v1/invoices/{id}/restore | 
*InvoiceApi* | [**updateInvoice**](docs/InvoiceApi.md#updateinvoice) | **PUT** /api/v1/invoices/{id} | 
*JobApplicationApi* | [**applyPublic**](docs/JobApplicationApi.md#applypublic) | **POST** /api/v1/public/jobs/{posting_id}/apply | 
*JobApplicationApi* | [**deleteJobApplication**](docs/JobApplicationApi.md#deletejobapplication) | **DELETE** /api/v1/job-applications/{application_id} | 
*JobApplicationApi* | [**downloadCv**](docs/JobApplicationApi.md#downloadcv) | **GET** /api/v1/job-applications/{application_id}/cv | 
*JobApplicationApi* | [**getJobApplication**](docs/JobApplicationApi.md#getjobapplication) | **GET** /api/v1/job-applications/{application_id} | 
*JobApplicationApi* | [**inboundEmail**](docs/JobApplicationApi.md#inboundemail) | **POST** /api/v1/public/jobs/inbound-email | Inbound CV email, mailgun/sendgrid inbound-parse style: multipart form
with &#39;from&#39;, &#39;subject&#39;, &#39;body-plain&#39; and one or more &#39;attachment-N&#39; file
fields. The subject may reference a posting as &#39;[JOB-&lt;posting_id&gt;]&#39;;
without one the application lands in the general inbox.
*JobApplicationApi* | [**listJobApplications**](docs/JobApplicationApi.md#listjobapplications) | **GET** /api/v1/job-applications | 
*JobApplicationApi* | [**listPublicPostings**](docs/JobApplicationApi.md#listpublicpostings) | **GET** /api/v1/public/jobs | 
*JobApplicationApi* | [**scoreJobApplication**](docs/JobApplicationApi.md#scorejobapplication) | **POST** /api/v1/job-applications/{application_id}/score | 
*JobApplicationApi* | [**updateJobApplicationStatus**](docs/JobApplicationApi.md#updatejobapplicationstatus) | **PATCH** /api/v1/job-applications/{application_id}/status | 
*JobPostingApi* | [**createJobPosting**](docs/JobPostingApi.md#createjobposting) | **POST** /api/v1/job-postings | 
*JobPostingApi* | [**deleteJobPosting**](docs/JobPostingApi.md#deletejobposting) | **DELETE** /api/v1/job-postings/{id} | 
*JobPostingApi* | [**getJobPosting**](docs/JobPostingApi.md#getjobposting) | **GET** /api/v1/job-postings/{id} | 
*JobPostingApi* | [**listJobPostings**](docs/JobPostingApi.md#listjobpostings) | **GET** /api/v1/job-postings | 
*JobPostingApi* | [**updateJobPosting**](docs/JobPostingApi.md#updatejobposting) | **PUT** /api/v1/job-postings/{id} | 
*KonzernApi* | [**konzernExportApi**](docs/KonzernApi.md#konzernexportapi) | **GET** /api/v1/bookkeeping/konzern/status/export | 
*KonzernApi* | [**konzernStatusApi**](docs/KonzernApi.md#konzernstatusapi) | **GET** /api/v1/bookkeeping/konzern/status | 
*KostenVorschauApi* | [**kostenVorschauApi**](docs/KostenVorschauApi.md#kostenvorschauapi) | **GET** /api/v1/bookkeeping/kosten-vorschau | 
*KstApi* | [**kstApi**](docs/KstApi.md#kstapi) | **GET** /api/v1/bookkeeping/kst | 
*KycRecordApi* | [**createKycRecord**](docs/KycRecordApi.md#createkycrecord) | **POST** /api/v1/kyc-records | 
*KycRecordApi* | [**deleteKycRecord**](docs/KycRecordApi.md#deletekycrecord) | **DELETE** /api/v1/kyc-records/{id} | 
*KycRecordApi* | [**getKycRecord**](docs/KycRecordApi.md#getkycrecord) | **GET** /api/v1/kyc-records/{id} | 
*KycRecordApi* | [**getKycRecords**](docs/KycRecordApi.md#getkycrecords) | **GET** /api/v1/kyc-records/ | 
*KycRecordApi* | [**updateKycRecord**](docs/KycRecordApi.md#updatekycrecord) | **PUT** /api/v1/kyc-records/{id} | 
*LeadApi* | [**listLeadsApi**](docs/LeadApi.md#listleadsapi) | **GET** /api/v1/support/leads | 
*LeadApi* | [**updateLeadApi**](docs/LeadApi.md#updateleadapi) | **PUT** /api/v1/support/leads/{lead_id} | 
*LegalDocumentApi* | [**getLegalDocuments**](docs/LegalDocumentApi.md#getlegaldocuments) | **GET** /api/v1/legal/documents | List all legal documents of the tenant. Missing documents are seeded from
the default texts (with tenant placeholders replaced) on first access.
*LegalDocumentApi* | [**resetLegalDocuments**](docs/LegalDocumentApi.md#resetlegaldocuments) | **POST** /api/v1/legal/documents/reset | Restore default texts for all documents (or a single doc_type/lang when
the optional filter is given). Returns the full tenant list.
*LegalDocumentApi* | [**upsertLegalDocuments**](docs/LegalDocumentApi.md#upsertlegaldocuments) | **PUT** /api/v1/legal/documents | Upsert legal documents per (doc_type, lang). Returns the full tenant list.
*ListOpenItemsApi* | [**listOpenItemsApi**](docs/ListOpenItemsApi.md#listopenitemsapi) | **GET** /api/v1/bookkeeping/open-items | 
*MarketplaceApiApi* | [**createConnectionApi**](docs/MarketplaceApiApi.md#createconnectionapi) | **POST** /api/v1/marketplace/connections | Create a new connection (for API-key based platforms)
*MarketplaceApiApi* | [**deleteConnectionApi**](docs/MarketplaceApiApi.md#deleteconnectionapi) | **DELETE** /api/v1/marketplace/connections/{connection_id} | Soft-delete a connection
*MarketplaceApiApi* | [**getConnectionApi**](docs/MarketplaceApiApi.md#getconnectionapi) | **GET** /api/v1/marketplace/connections/{connection_id} | Get a single connection
*MarketplaceApiApi* | [**getSyncDirectionApi**](docs/MarketplaceApiApi.md#getsyncdirectionapi) | **GET** /api/v1/marketplace/connections/{connection_id}/directions | Get current sync direction configuration for a connection
*MarketplaceApiApi* | [**getSyncLogsApi**](docs/MarketplaceApiApi.md#getsynclogsapi) | **GET** /api/v1/marketplace/connections/{connection_id}/logs | Get sync logs for a connection
*MarketplaceApiApi* | [**listConnectionsApi**](docs/MarketplaceApiApi.md#listconnectionsapi) | **GET** /api/v1/marketplace/connections | List connections for the current tenant
*MarketplaceApiApi* | [**listPlatformsApi**](docs/MarketplaceApiApi.md#listplatformsapi) | **GET** /api/v1/marketplace/platforms | List all supported platforms
*MarketplaceApiApi* | [**oauthAuthorizeApi**](docs/MarketplaceApiApi.md#oauthauthorizeapi) | **POST** /api/v1/marketplace/oauth/authorize | OAuth: initiate authorization flow
*MarketplaceApiApi* | [**oauthCallbackApi**](docs/MarketplaceApiApi.md#oauthcallbackapi) | **POST** /api/v1/marketplace/oauth/callback | OAuth: handle callback after authorization
*MarketplaceApiApi* | [**triggerSyncApi**](docs/MarketplaceApiApi.md#triggersyncapi) | **POST** /api/v1/marketplace/connections/{connection_id}/sync | Trigger sync for a connection
*MarketplaceApiApi* | [**updateConnectionApi**](docs/MarketplaceApiApi.md#updateconnectionapi) | **PUT** /api/v1/marketplace/connections/{connection_id} | Update a connection
*MarketplaceApiApi* | [**updateSyncDirectionApi**](docs/MarketplaceApiApi.md#updatesyncdirectionapi) | **PUT** /api/v1/marketplace/connections/{connection_id}/directions | Update per-entity sync direction configuration for a connection
*MarketplaceApiApi* | [**webhookReceiverApi**](docs/MarketplaceApiApi.md#webhookreceiverapi) | **POST** /api/v1/marketplace/webhook/{platform}/{connection_id} | Webhook receiver
*NotificationsApi* | [**deleteNotification**](docs/NotificationsApi.md#deletenotification) | **DELETE** /api/v1/notifications/{id} | 
*NotificationsApi* | [**listNotifications**](docs/NotificationsApi.md#listnotifications) | **GET** /api/v1/notifications | 
*NotificationsApi* | [**markAllRead**](docs/NotificationsApi.md#markallread) | **PUT** /api/v1/notifications/read-all | 
*NotificationsApi* | [**markAsRead**](docs/NotificationsApi.md#markasread) | **PUT** /api/v1/notifications/{id}/read | 
*NotificationsApi* | [**unreadCount**](docs/NotificationsApi.md#unreadcount) | **GET** /api/v1/notifications/unread-count | 
*OffenlegungApi* | [**offenlegungApi**](docs/OffenlegungApi.md#offenlegungapi) | **GET** /api/v1/bookkeeping/offenlegung | 
*OnlineshopApi* | [**getSmtpConfigApi**](docs/OnlineshopApi.md#getsmtpconfigapi) | **GET** /api/v1/settings/smtp | 
*OnlineshopApi* | [**saveSmtpConfigApi**](docs/OnlineshopApi.md#savesmtpconfigapi) | **PUT** /api/v1/settings/smtp | 
*OrderApi* | [**addOrderTags**](docs/OrderApi.md#addordertags) | **POST** /api/v1/orders/{order_id}/tags | 
*OrderApi* | [**findOrderByExternalRef**](docs/OrderApi.md#findorderbyexternalref) | **GET** /api/v1/orders/by-ext-ref/{ext_ref} | 
*OrderApi* | [**getOrder**](docs/OrderApi.md#getorder) | **GET** /api/v1/order/{order_number} | 
*OrderApi* | [**getOrders**](docs/OrderApi.md#getorders) | **GET** /api/v1/orders | 
*OrderApi* | [**patchOrder**](docs/OrderApi.md#patchorder) | **PATCH** /api/v1/orders/{order_id} | 
*OrderApi* | [**replaceOrderTags**](docs/OrderApi.md#replaceordertags) | **PUT** /api/v1/orders/{order_id}/tags | 
*OrderApi* | [**updateOrderState**](docs/OrderApi.md#updateorderstate) | **PUT** /api/v1/orders/{order_id}/state | 
*OrderConfirmationApi* | [**createConfirmation**](docs/OrderConfirmationApi.md#createconfirmation) | **POST** /api/v1/order-confirmations | 
*OrderConfirmationApi* | [**deleteConfirmation**](docs/OrderConfirmationApi.md#deleteconfirmation) | **DELETE** /api/v1/order-confirmations/{confirmation_id} | 
*OrderConfirmationApi* | [**downloadConfirmationPdf**](docs/OrderConfirmationApi.md#downloadconfirmationpdf) | **GET** /api/v1/order-confirmations/{confirmation_id}/pdf | 
*OrderConfirmationApi* | [**getConfirmation**](docs/OrderConfirmationApi.md#getconfirmation) | **GET** /api/v1/order-confirmations/{confirmation_id} | 
*OrderConfirmationApi* | [**listConfirmations**](docs/OrderConfirmationApi.md#listconfirmations) | **GET** /api/v1/order-confirmations/ | 
*OrderConfirmationApi* | [**orderconfirmationRestore**](docs/OrderConfirmationApi.md#orderconfirmationrestore) | **POST** /api/v1/order-confirmations/{confirmation_id}/restore | 
*OrderConfirmationApi* | [**pursueConfirmation**](docs/OrderConfirmationApi.md#pursueconfirmation) | **POST** /api/v1/order-confirmations/{confirmation_id}/pursue | 
*OssReportApi* | [**ossReportApi**](docs/OssReportApi.md#ossreportapi) | **GET** /api/v1/bookkeeping/oss | 
*PackingApi* | [**completePacking**](docs/PackingApi.md#completepacking) | **POST** /api/v1/packing/{order_number}/complete | Mark packing as complete and transition order to shipped
*PackingApi* | [**getPackingQueue**](docs/PackingApi.md#getpackingqueue) | **GET** /api/v1/packing/queue | Get the packing queue - orders ready for packing
*PackingApi* | [**printDeliveryNote**](docs/PackingApi.md#printdeliverynote) | **POST** /api/v1/packing/{order_number}/print-delivery-note | Print delivery note (Lieferschein) for an order
*PackingApi* | [**printLabel**](docs/PackingApi.md#printlabel) | **POST** /api/v1/packing/{order_number}/print-label | Print shipping label for an order
*PackingApi* | [**recordPackingVideo**](docs/PackingApi.md#recordpackingvideo) | **POST** /api/v1/packing/{order_number}/record-video | Record video of packing process
*ParticipationApi* | [**createParticipation**](docs/ParticipationApi.md#createparticipation) | **POST** /api/v1/participations | 
*ParticipationApi* | [**deleteParticipation**](docs/ParticipationApi.md#deleteparticipation) | **DELETE** /api/v1/participations/{id} | 
*ParticipationApi* | [**getParticipation**](docs/ParticipationApi.md#getparticipation) | **GET** /api/v1/participations/{id} | 
*ParticipationApi* | [**getParticipations**](docs/ParticipationApi.md#getparticipations) | **GET** /api/v1/participations/ | 
*ParticipationApi* | [**updateParticipation**](docs/ParticipationApi.md#updateparticipation) | **PUT** /api/v1/participations/{id} | 
*PaygapApi* | [**paygapAuskunftApi**](docs/PaygapApi.md#paygapauskunftapi) | **GET** /api/v1/bookkeeping/paygap/auskunft/{employee_id} | 
*PaygapApi* | [**paygapExportApi**](docs/PaygapApi.md#paygapexportapi) | **GET** /api/v1/bookkeeping/paygap/export | 
*PaygapApi* | [**paygapReportApi**](docs/PaygapApi.md#paygapreportapi) | **GET** /api/v1/bookkeeping/paygap/report | 
*PaymentApi* | [**createPayment**](docs/PaymentApi.md#createpayment) | **POST** /api/v1/payments | 
*PaymentApi* | [**deletePayment**](docs/PaymentApi.md#deletepayment) | **DELETE** /api/v1/payments/{id} | 
*PaymentApi* | [**getPayment**](docs/PaymentApi.md#getpayment) | **GET** /api/v1/payments/{id} | 
*PaymentApi* | [**getPayments**](docs/PaymentApi.md#getpayments) | **GET** /api/v1/payments/ | 
*PaymentApi* | [**paymentRestore**](docs/PaymentApi.md#paymentrestore) | **POST** /api/v1/payments/{id}/restore | 
*PaymentApi* | [**updatePayment**](docs/PaymentApi.md#updatepayment) | **PUT** /api/v1/payments/{id} | 
*PaymentConditionApi* | [**listPaymentConditionsApi**](docs/PaymentConditionApi.md#listpaymentconditionsapi) | **GET** /api/v1/payment-conditions | 
*PaymentGatewayApi* | [**createPaymentGatewayApi**](docs/PaymentGatewayApi.md#createpaymentgatewayapi) | **POST** /api/v1/payment-gateways | 
*PaymentGatewayApi* | [**deletePaymentGatewayApi**](docs/PaymentGatewayApi.md#deletepaymentgatewayapi) | **DELETE** /api/v1/payment-gateways/{gateway_id} | 
*PaymentGatewayApi* | [**listPaymentGatewaysApi**](docs/PaymentGatewayApi.md#listpaymentgatewaysapi) | **GET** /api/v1/payment-gateways/ | 
*PaymentGatewayApi* | [**oauthAuthorizeApi**](docs/PaymentGatewayApi.md#oauthauthorizeapi) | **POST** /api/v1/payment-gateways/oauth/authorize | 
*PaymentGatewayApi* | [**oauthCallbackApi**](docs/PaymentGatewayApi.md#oauthcallbackapi) | **POST** /api/v1/payment-gateways/oauth/callback | 
*PaymentGatewayApi* | [**updatePaymentGatewayApi**](docs/PaymentGatewayApi.md#updatepaymentgatewayapi) | **PUT** /api/v1/payment-gateways/{gateway_id} | 
*PayrollApi* | [**payrollApprove**](docs/PayrollApi.md#payrollapprove) | **POST** /api/v1/payroll/{id}/approve | 
*PayrollApi* | [**payrollAutopay**](docs/PayrollApi.md#payrollautopay) | **POST** /api/v1/payroll/{id}/autopay | 
*PayrollApi* | [**payrollCalculate**](docs/PayrollApi.md#payrollcalculate) | **POST** /api/v1/payroll/{id}/calculate | 
*PayrollApi* | [**payrollCreate**](docs/PayrollApi.md#payrollcreate) | **POST** /api/v1/payroll | 
*PayrollApi* | [**payrollDelete**](docs/PayrollApi.md#payrolldelete) | **DELETE** /api/v1/payroll/{id} | 
*PayrollApi* | [**payrollElsterExport**](docs/PayrollApi.md#payrollelsterexport) | **POST** /api/v1/payroll/{id}/elster-export | 
*PayrollApi* | [**payrollEmail**](docs/PayrollApi.md#payrollemail) | **POST** /api/v1/payroll/{id}/email | 
*PayrollApi* | [**payrollEntryPdf**](docs/PayrollApi.md#payrollentrypdf) | **GET** /api/v1/payroll/{id}/entries/{entry_id}/pdf | 
*PayrollApi* | [**payrollGet**](docs/PayrollApi.md#payrollget) | **GET** /api/v1/payroll/{id} | 
*PayrollApi* | [**payrollList**](docs/PayrollApi.md#payrolllist) | **GET** /api/v1/payroll | 
*PayrollApi* | [**payrollPay**](docs/PayrollApi.md#payrollpay) | **POST** /api/v1/payroll/{id}/pay | 
*PayrollApi* | [**payrollPdf**](docs/PayrollApi.md#payrollpdf) | **GET** /api/v1/payroll/{id}/pdf | 
*PayrollApi* | [**payrollSummary**](docs/PayrollApi.md#payrollsummary) | **GET** /api/v1/payroll/summary/{year} | 
*PayrollApi* | [**payrollSvMeldungen**](docs/PayrollApi.md#payrollsvmeldungen) | **POST** /api/v1/payroll/{id}/sv-meldungen | 
*PeppolApi* | [**peppolApi**](docs/PeppolApi.md#peppolapi) | **GET** /api/v1/invoices/{id}/peppol | 
*PlausibilityApi* | [**plausibilityCheckApi**](docs/PlausibilityApi.md#plausibilitycheckapi) | **GET** /api/v1/bookkeeping/plausibility | 
*PosApi* | [**posBilling**](docs/PosApi.md#posbilling) | **GET** /api/pos/billing | 
*PosApi* | [**posCreateOrder**](docs/PosApi.md#poscreateorder) | **POST** /api/pos/orders | 
*PosApi* | [**posCreateRegister**](docs/PosApi.md#poscreateregister) | **POST** /api/pos/registers | 
*PosApi* | [**posCreateTable**](docs/PosApi.md#poscreatetable) | **POST** /api/pos/tables | 
*PosApi* | [**posDisableRegister**](docs/PosApi.md#posdisableregister) | **POST** /api/pos/registers/{id}/disable | 
*PosApi* | [**posFreeTable**](docs/PosApi.md#posfreetable) | **POST** /api/pos/tables/{id}/free | 
*PosApi* | [**posKasseClosing**](docs/PosApi.md#poskasseclosing) | **POST** /api/pos/kasse/closing | 
*PosApi* | [**posKasseEntries**](docs/PosApi.md#poskasseentries) | **GET** /api/pos/kasse/entries | 
*PosApi* | [**posKasseExport**](docs/PosApi.md#poskasseexport) | **GET** /api/pos/kasse/export | 
*PosApi* | [**posKassePayInOut**](docs/PosApi.md#poskassepayinout) | **POST** /api/pos/kasse/pay-in-out | 
*PosApi* | [**posListOrders**](docs/PosApi.md#poslistorders) | **GET** /api/pos/orders | 
*PosApi* | [**posListProducts**](docs/PosApi.md#poslistproducts) | **GET** /api/pos/products | 
*PosApi* | [**posListRegisters**](docs/PosApi.md#poslistregisters) | **GET** /api/pos/registers | 
*PosApi* | [**posListTables**](docs/PosApi.md#poslisttables) | **GET** /api/pos/tables | 
*PosApi* | [**posOrderPrint**](docs/PosApi.md#posorderprint) | **GET** /api/pos/orders/{order_number}/print | 
*PosApi* | [**posOrderReceipt**](docs/PosApi.md#posorderreceipt) | **GET** /api/pos/orders/{order_number}/receipt | 
*PosApi* | [**posPayOrder**](docs/PosApi.md#pospayorder) | **POST** /api/pos/orders/{order_number}/pay | 
*PosApi* | [**posSumupCheckout**](docs/PosApi.md#possumupcheckout) | **POST** /api/pos/sumup/checkout | 
*PostingCategoryApi* | [**createPostingCategory**](docs/PostingCategoryApi.md#createpostingcategory) | **POST** /api/v1/posting-categories | 
*PostingCategoryApi* | [**deletePostingCategory**](docs/PostingCategoryApi.md#deletepostingcategory) | **DELETE** /api/v1/posting-categories/{category_id} | 
*PostingCategoryApi* | [**listPostingCategories**](docs/PostingCategoryApi.md#listpostingcategories) | **GET** /api/v1/posting-categories | 
*PostingCategoryApi* | [**seedPostingCategories**](docs/PostingCategoryApi.md#seedpostingcategories) | **POST** /api/v1/posting-categories/seed/{skr_version} | 
*PostingCategoryApi* | [**updatePostingCategory**](docs/PostingCategoryApi.md#updatepostingcategory) | **PUT** /api/v1/posting-categories/{category_id} | 
*PriceTierApi* | [**createPriceTier**](docs/PriceTierApi.md#createpricetier) | **POST** /api/v1/price-tiers | 
*PriceTierApi* | [**deletePriceTier**](docs/PriceTierApi.md#deletepricetier) | **DELETE** /api/v1/price-tiers/{price_tier_id} | 
*PriceTierApi* | [**getPriceTier**](docs/PriceTierApi.md#getpricetier) | **GET** /api/v1/price-tiers/{price_tier_id} | 
*PriceTierApi* | [**getResolvedPrice**](docs/PriceTierApi.md#getresolvedprice) | **GET** /api/v1/price-tiers/resolved | 
*PriceTierApi* | [**listPriceTiers**](docs/PriceTierApi.md#listpricetiers) | **GET** /api/v1/price-tiers/ | 
*PriceTierApi* | [**updatePriceTier**](docs/PriceTierApi.md#updatepricetier) | **PUT** /api/v1/price-tiers/{price_tier_id} | 
*ProductApi* | [**createProductApi**](docs/ProductApi.md#createproductapi) | **POST** /api/v1/products | 
*ProductApi* | [**deleteProductApi**](docs/ProductApi.md#deleteproductapi) | **DELETE** /api/v1/products/{product_id} | 
*ProductApi* | [**getProductApi**](docs/ProductApi.md#getproductapi) | **GET** /api/v1/products/{product_id} | 
*ProductApi* | [**getProductStockApi**](docs/ProductApi.md#getproductstockapi) | **GET** /api/v1/products/{product_id}/stock | 
*ProductApi* | [**getProductsApi**](docs/ProductApi.md#getproductsapi) | **GET** /api/v1/products/ | 
*ProductApi* | [**listLowStockProductsApi**](docs/ProductApi.md#listlowstockproductsapi) | **GET** /api/v1/products/low-stock | 
*ProductApi* | [**productRestore**](docs/ProductApi.md#productrestore) | **POST** /api/v1/products/{product_id}/restore | 
*ProductApi* | [**updateProductApi**](docs/ProductApi.md#updateproductapi) | **PUT** /api/v1/products/{product_id} | 
*ProductApi* | [**updateProductStockApi**](docs/ProductApi.md#updateproductstockapi) | **PUT** /api/v1/products/{product_id}/stock | 
*ProductAttributeApi* | [**createProductAttribute**](docs/ProductAttributeApi.md#createproductattribute) | **POST** /api/v1/product-attributes | 
*ProductAttributeApi* | [**deleteProductAttribute**](docs/ProductAttributeApi.md#deleteproductattribute) | **DELETE** /api/v1/product-attributes/{attribute_id} | 
*ProductAttributeApi* | [**getProductAttribute**](docs/ProductAttributeApi.md#getproductattribute) | **GET** /api/v1/product-attributes/{attribute_id} | 
*ProductAttributeApi* | [**listProductAttributes**](docs/ProductAttributeApi.md#listproductattributes) | **GET** /api/v1/product-attributes/ | 
*ProductAttributeApi* | [**updateProductAttribute**](docs/ProductAttributeApi.md#updateproductattribute) | **PUT** /api/v1/product-attributes/{attribute_id} | 
*ProductCategoryApi* | [**createProductCategory**](docs/ProductCategoryApi.md#createproductcategory) | **POST** /api/v1/product-categories | 
*ProductCategoryApi* | [**deleteProductCategory**](docs/ProductCategoryApi.md#deleteproductcategory) | **DELETE** /api/v1/product-categories/{category_id} | 
*ProductCategoryApi* | [**getProductCategory**](docs/ProductCategoryApi.md#getproductcategory) | **GET** /api/v1/product-categories/{category_id} | 
*ProductCategoryApi* | [**listProductCategories**](docs/ProductCategoryApi.md#listproductcategories) | **GET** /api/v1/product-categories | 
*ProductCategoryApi* | [**updateProductCategory**](docs/ProductCategoryApi.md#updateproductcategory) | **PUT** /api/v1/product-categories/{category_id} | 
*ProductVariantApi* | [**createProductVariant**](docs/ProductVariantApi.md#createproductvariant) | **POST** /api/v1/product-variants | 
*ProductVariantApi* | [**deleteProductVariant**](docs/ProductVariantApi.md#deleteproductvariant) | **DELETE** /api/v1/product-variants/{variant_id} | 
*ProductVariantApi* | [**generateProductVariants**](docs/ProductVariantApi.md#generateproductvariants) | **POST** /api/v1/product-variants/generate | 
*ProductVariantApi* | [**getProductVariant**](docs/ProductVariantApi.md#getproductvariant) | **GET** /api/v1/product-variants/{variant_id} | 
*ProductVariantApi* | [**listProductVariants**](docs/ProductVariantApi.md#listproductvariants) | **GET** /api/v1/product-variants/ | 
*ProductVariantApi* | [**updateProductVariant**](docs/ProductVariantApi.md#updateproductvariant) | **PUT** /api/v1/product-variants/{variant_id} | 
*ProductionOrderApi* | [**createProductionOrder**](docs/ProductionOrderApi.md#createproductionorder) | **POST** /api/v1/production-orders | 
*ProductionOrderApi* | [**deleteProductionOrder**](docs/ProductionOrderApi.md#deleteproductionorder) | **DELETE** /api/v1/production-orders/{production_order_id} | 
*ProductionOrderApi* | [**getProductionOrder**](docs/ProductionOrderApi.md#getproductionorder) | **GET** /api/v1/production-orders/{production_order_id} | 
*ProductionOrderApi* | [**listProductionOrders**](docs/ProductionOrderApi.md#listproductionorders) | **GET** /api/v1/production-orders/ | 
*ProductionOrderApi* | [**productionOrderCosting**](docs/ProductionOrderApi.md#productionordercosting) | **GET** /api/v1/production-orders/{production_order_id}/costing | Actual-costing report (Nachkalkulation) — material costs from BOM
components at their purchase price plus the resulting per-unit cost and
margin against the finished product&#39;s sale price.
*ProductionOrderApi* | [**updateProductionOrder**](docs/ProductionOrderApi.md#updateproductionorder) | **PUT** /api/v1/production-orders/{production_order_id} | 
*ProductionOrderApi* | [**updateProductionOrderStatus**](docs/ProductionOrderApi.md#updateproductionorderstatus) | **PUT** /api/v1/production-orders/{production_order_id}/status | 
*ProformaInvoiceApi* | [**convertProformaToInvoice**](docs/ProformaInvoiceApi.md#convertproformatoinvoice) | **POST** /api/v1/proforma-invoices/{proforma_id}/convert | 
*ProformaInvoiceApi* | [**createProformaInvoice**](docs/ProformaInvoiceApi.md#createproformainvoice) | **POST** /api/v1/proforma-invoices | 
*ProformaInvoiceApi* | [**deleteProformaInvoice**](docs/ProformaInvoiceApi.md#deleteproformainvoice) | **DELETE** /api/v1/proforma-invoices/{proforma_id} | 
*ProformaInvoiceApi* | [**getProformaInvoice**](docs/ProformaInvoiceApi.md#getproformainvoice) | **GET** /api/v1/proforma-invoices/{proforma_id} | 
*ProformaInvoiceApi* | [**listProformaInvoices**](docs/ProformaInvoiceApi.md#listproformainvoices) | **GET** /api/v1/proforma-invoices/ | 
*ProformaInvoiceApi* | [**updateProformaInvoice**](docs/ProformaInvoiceApi.md#updateproformainvoice) | **PUT** /api/v1/proforma-invoices/{proforma_id} | 
*ProposeAssignmentsApi* | [**proposeAssignmentsApi**](docs/ProposeAssignmentsApi.md#proposeassignmentsapi) | **GET** /api/v1/bookkeeping/propose-assignments | 
*PublicReturnsApi* | [**getPublicReturnStatus**](docs/PublicReturnsApi.md#getpublicreturnstatus) | **GET** /api/v1/public/returns/status | Customer checks the status of a return (public, no auth). The return is
only revealed when its linked order&#39;s email matches.
*PublicReturnsApi* | [**listPublicReturns**](docs/PublicReturnsApi.md#listpublicreturns) | **GET** /api/v1/public/returns/list | List all returns for an order (public, no auth).
*PublicReturnsApi* | [**requestPublicReturn**](docs/PublicReturnsApi.md#requestpublicreturn) | **POST** /api/v1/public/returns/request | Customer requests a return for an order (public, no auth).
*PurchaseOrderApi* | [**createPurchaseOrder**](docs/PurchaseOrderApi.md#createpurchaseorder) | **POST** /api/v1/purchase-orders | 
*PurchaseOrderApi* | [**deletePurchaseOrder**](docs/PurchaseOrderApi.md#deletepurchaseorder) | **DELETE** /api/v1/purchase-orders/{purchase_order_id} | 
*PurchaseOrderApi* | [**getPurchaseOrder**](docs/PurchaseOrderApi.md#getpurchaseorder) | **GET** /api/v1/purchase-orders/{purchase_order_id} | 
*PurchaseOrderApi* | [**listPurchaseOrders**](docs/PurchaseOrderApi.md#listpurchaseorders) | **GET** /api/v1/purchase-orders/ | 
*PurchaseOrderApi* | [**matchInvoice**](docs/PurchaseOrderApi.md#matchinvoice) | **POST** /api/v1/purchase-orders/{purchase_order_id}/match-invoice | 3-way invoice check (Rechnungsprüfung): compares the purchase order line
items, the quantities received via goods receipts, and the supplier
invoice line items, reporting quantity and price variances per product.
*PurchaseOrderApi* | [**updatePurchaseOrder**](docs/PurchaseOrderApi.md#updatepurchaseorder) | **PUT** /api/v1/purchase-orders/{purchase_order_id} | 
*PurchaseOrderApi* | [**updatePurchaseOrderStatus**](docs/PurchaseOrderApi.md#updatepurchaseorderstatus) | **PUT** /api/v1/purchase-orders/{purchase_order_id}/status | 
*QuotationApi* | [**createQuotation**](docs/QuotationApi.md#createquotation) | **POST** /api/v1/quotations | 
*QuotationApi* | [**deleteQuotation**](docs/QuotationApi.md#deletequotation) | **DELETE** /api/v1/quotations/{quotation_id} | 
*QuotationApi* | [**downloadQuotationPdf**](docs/QuotationApi.md#downloadquotationpdf) | **GET** /api/v1/quotations/{quotation_id}/pdf | 
*QuotationApi* | [**getQuotation**](docs/QuotationApi.md#getquotation) | **GET** /api/v1/quotations/{quotation_id} | 
*QuotationApi* | [**listQuotations**](docs/QuotationApi.md#listquotations) | **GET** /api/v1/quotations/ | 
*QuotationApi* | [**pursueQuotation**](docs/QuotationApi.md#pursuequotation) | **POST** /api/v1/quotations/{quotation_id}/pursue | 
*QuotationApi* | [**quotationRestore**](docs/QuotationApi.md#quotationrestore) | **POST** /api/v1/quotations/{quotation_id}/restore | 
*QuotationApi* | [**updateQuotation**](docs/QuotationApi.md#updatequotation) | **PUT** /api/v1/quotations/{quotation_id} | 
*RecurringTemplateApi* | [**createRecurringTemplate**](docs/RecurringTemplateApi.md#createrecurringtemplate) | **POST** /api/v1/recurring-templates | 
*RecurringTemplateApi* | [**deleteRecurringTemplate**](docs/RecurringTemplateApi.md#deleterecurringtemplate) | **DELETE** /api/v1/recurring-templates/{template_id} | 
*RecurringTemplateApi* | [**getRecurringTemplate**](docs/RecurringTemplateApi.md#getrecurringtemplate) | **GET** /api/v1/recurring-templates/{template_id} | 
*RecurringTemplateApi* | [**listRecurringTemplates**](docs/RecurringTemplateApi.md#listrecurringtemplates) | **GET** /api/v1/recurring-templates/ | 
*ReorderProposalApi* | [**applyReorderProposal**](docs/ReorderProposalApi.md#applyreorderproposal) | **POST** /api/v1/reorder-proposals/apply | Convert a reorder proposal into a draft purchase order.
*ReorderProposalApi* | [**getReorderProposal**](docs/ReorderProposalApi.md#getreorderproposal) | **GET** /api/v1/reorder-proposals | 
*ReplenishmentApi* | [**applyReplenishments**](docs/ReplenishmentApi.md#applyreplenishments) | **POST** /api/v1/replenishments/apply | Create one draft stock transfer per (source → target) pair carrying all
suggested product lines for that pair.
*ReplenishmentApi* | [**getReplenishments**](docs/ReplenishmentApi.md#getreplenishments) | **GET** /api/v1/replenishments | 
*ReportsApi* | [**bilanzReportApi**](docs/ReportsApi.md#bilanzreportapi) | **GET** /api/v1/bookkeeping/reports/bilanz | Bilanz (Balance Sheet)
*ReportsApi* | [**guvReportApi**](docs/ReportsApi.md#guvreportapi) | **GET** /api/v1/bookkeeping/reports/guv | Gewinn- und Verlustrechnung (P&amp;L statement)
*ReportsApi* | [**kontenansichtReportApi**](docs/ReportsApi.md#kontenansichtreportapi) | **GET** /api/v1/bookkeeping/reports/kontenansicht | Kontenansicht (Account Overview)
*ReportsApi* | [**umsatzsteuerReportApi**](docs/ReportsApi.md#umsatzsteuerreportapi) | **GET** /api/v1/bookkeeping/reports/umsatzsteuer | Umsatzsteuer-Voranmeldung (VAT report)
*ReturnOrderApi* | [**createReturnOrder**](docs/ReturnOrderApi.md#createreturnorder) | **POST** /api/v1/returns | 
*ReturnOrderApi* | [**deleteReturnOrder**](docs/ReturnOrderApi.md#deletereturnorder) | **DELETE** /api/v1/returns/{return_order_id} | 
*ReturnOrderApi* | [**getReturnOrder**](docs/ReturnOrderApi.md#getreturnorder) | **GET** /api/v1/returns/{return_order_id} | 
*ReturnOrderApi* | [**listReturnOrders**](docs/ReturnOrderApi.md#listreturnorders) | **GET** /api/v1/returns/ | 
*ReturnOrderApi* | [**returnLogisticsQueue**](docs/ReturnOrderApi.md#returnlogisticsqueue) | **GET** /api/v1/returns/logistics-queue | 
*ReturnOrderApi* | [**returnLogisticsSummary**](docs/ReturnOrderApi.md#returnlogisticssummary) | **GET** /api/v1/returns/logistics-summary | Returns-logistics aggregation for the dashboard: quantities received,
restocked and scrapped per warehouse.
*ReturnOrderApi* | [**updateReturnOrder**](docs/ReturnOrderApi.md#updatereturnorder) | **PUT** /api/v1/returns/{return_order_id} | 
*ReturnOrderApi* | [**updateReturnOrderStatus**](docs/ReturnOrderApi.md#updatereturnorderstatus) | **PUT** /api/v1/returns/{return_order_id}/status | 
*RfqApi* | [**convertRfq**](docs/RfqApi.md#convertrfq) | **POST** /api/v1/rfqs/{rfq_id}/convert | Convert an RFQ into a draft purchase order using the quoted unit prices
(falling back to the requested prices, then leaving them blank). Marks the
RFQ as &#39;converted&#39;.
*RfqApi* | [**createRfq**](docs/RfqApi.md#createrfq) | **POST** /api/v1/rfqs | 
*RfqApi* | [**deleteRfq**](docs/RfqApi.md#deleterfq) | **DELETE** /api/v1/rfqs/{rfq_id} | 
*RfqApi* | [**getRfq**](docs/RfqApi.md#getrfq) | **GET** /api/v1/rfqs/{rfq_id} | 
*RfqApi* | [**listRfqs**](docs/RfqApi.md#listrfqs) | **GET** /api/v1/rfqs/ | 
*RfqApi* | [**updateRfq**](docs/RfqApi.md#updaterfq) | **PUT** /api/v1/rfqs/{rfq_id} | 
*RfqApi* | [**updateRfqStatus**](docs/RfqApi.md#updaterfqstatus) | **PUT** /api/v1/rfqs/{rfq_id}/status | 
*SearchApi* | [**globalSearch**](docs/SearchApi.md#globalsearch) | **GET** /api/v1/search | GET /api/v1/search?q&#x3D;...
*SearchApi* | [**myPermissions**](docs/SearchApi.md#mypermissions) | **GET** /api/v1/me/permissions | GET /api/v1/me/permissions — resolved permissions from the auth token,
used by the frontend to show/hide admin navigation.
*ServiceAssignmentApi* | [**createServiceAssignment**](docs/ServiceAssignmentApi.md#createserviceassignment) | **POST** /api/v1/service-assignments | 
*ServiceAssignmentApi* | [**deleteServiceAssignment**](docs/ServiceAssignmentApi.md#deleteserviceassignment) | **DELETE** /api/v1/service-assignments/{id} | 
*ServiceAssignmentApi* | [**getServiceAssignment**](docs/ServiceAssignmentApi.md#getserviceassignment) | **GET** /api/v1/service-assignments/{id} | 
*ServiceAssignmentApi* | [**getServiceAssignments**](docs/ServiceAssignmentApi.md#getserviceassignments) | **GET** /api/v1/service-assignments/ | 
*ServiceAssignmentApi* | [**updateServiceAssignment**](docs/ServiceAssignmentApi.md#updateserviceassignment) | **PUT** /api/v1/service-assignments/{id} | 
*ServiceJobApi* | [**createServiceJob**](docs/ServiceJobApi.md#createservicejob) | **POST** /api/v1/service-jobs | 
*ServiceJobApi* | [**deleteServiceJob**](docs/ServiceJobApi.md#deleteservicejob) | **DELETE** /api/v1/service-jobs/{id} | 
*ServiceJobApi* | [**getServiceJob**](docs/ServiceJobApi.md#getservicejob) | **GET** /api/v1/service-jobs/{id} | 
*ServiceJobApi* | [**getServiceJobs**](docs/ServiceJobApi.md#getservicejobs) | **GET** /api/v1/service-jobs/ | 
*ServiceJobApi* | [**updateServiceJob**](docs/ServiceJobApi.md#updateservicejob) | **PUT** /api/v1/service-jobs/{id} | 
*ShareholderApi* | [**createShareholder**](docs/ShareholderApi.md#createshareholder) | **POST** /api/v1/shareholders | 
*ShareholderApi* | [**deleteShareholder**](docs/ShareholderApi.md#deleteshareholder) | **DELETE** /api/v1/shareholders/{id} | 
*ShareholderApi* | [**getShareholder**](docs/ShareholderApi.md#getshareholder) | **GET** /api/v1/shareholders/{id} | 
*ShareholderApi* | [**getShareholders**](docs/ShareholderApi.md#getshareholders) | **GET** /api/v1/shareholders/ | 
*ShareholderApi* | [**updateShareholder**](docs/ShareholderApi.md#updateshareholder) | **PUT** /api/v1/shareholders/{id} | 
*ShipmentApi* | [**createShipment**](docs/ShipmentApi.md#createshipment) | **POST** /api/v1/shipments | 
*ShipmentApi* | [**createShipmentFromOrder**](docs/ShipmentApi.md#createshipmentfromorder) | **POST** /api/v1/orders/{order_number}/shipments | Create a real shipment for an order: calls the configured carrier&#39;s label
API, stores the returned tracking/label on a new shipment row, and marks
the order as shipped.
*ShipmentApi* | [**deleteShipment**](docs/ShipmentApi.md#deleteshipment) | **DELETE** /api/v1/shipments/{shipment_id} | 
*ShipmentApi* | [**getShipment**](docs/ShipmentApi.md#getshipment) | **GET** /api/v1/shipments/{shipment_id} | 
*ShipmentApi* | [**listShipments**](docs/ShipmentApi.md#listshipments) | **GET** /api/v1/shipments | 
*ShipmentApi* | [**trackOrderPublic**](docs/ShipmentApi.md#trackorderpublic) | **POST** /api/v1/public/track | Customer-facing tracking lookup: order number + email → shipment status and
live carrier events. No auth (public storefront API).
*ShipmentApi* | [**trackShipmentApi**](docs/ShipmentApi.md#trackshipmentapi) | **GET** /api/v1/shipments/{shipment_id}/tracking | 
*ShipmentApi* | [**updateShipmentStatus**](docs/ShipmentApi.md#updateshipmentstatus) | **PUT** /api/v1/shipments/{shipment_id}/status | 
*ShippingApi* | [**getCredentialsApi**](docs/ShippingApi.md#getcredentialsapi) | **GET** /api/v1/shipping/credentials | 
*ShippingApi* | [**getRatesApi**](docs/ShippingApi.md#getratesapi) | **POST** /api/v1/shipping/rates | 
*ShippingApi* | [**listProvidersApi**](docs/ShippingApi.md#listprovidersapi) | **GET** /api/v1/shipping/providers | 
*ShippingApi* | [**saveCredentialsApi**](docs/ShippingApi.md#savecredentialsapi) | **PUT** /api/v1/shipping/credentials | 
*ShippingRuleApi* | [**createShippingRule**](docs/ShippingRuleApi.md#createshippingrule) | **POST** /api/v1/shipping-rules | 
*ShippingRuleApi* | [**deleteShippingRule**](docs/ShippingRuleApi.md#deleteshippingrule) | **DELETE** /api/v1/shipping-rules/{rule_id} | 
*ShippingRuleApi* | [**getShippingRule**](docs/ShippingRuleApi.md#getshippingrule) | **GET** /api/v1/shipping-rules/{rule_id} | 
*ShippingRuleApi* | [**listShippingRules**](docs/ShippingRuleApi.md#listshippingrules) | **GET** /api/v1/shipping-rules/ | 
*ShippingRuleApi* | [**updateShippingRule**](docs/ShippingRuleApi.md#updateshippingrule) | **PUT** /api/v1/shipping-rules/{rule_id} | 
*ShippingThresholdApi* | [**createShippingThreshold**](docs/ShippingThresholdApi.md#createshippingthreshold) | **POST** /api/v1/shipping-thresholds | 
*ShippingThresholdApi* | [**deleteShippingThreshold**](docs/ShippingThresholdApi.md#deleteshippingthreshold) | **DELETE** /api/v1/shipping-thresholds/{threshold_id} | 
*ShippingThresholdApi* | [**getDeliverable**](docs/ShippingThresholdApi.md#getdeliverable) | **GET** /api/v1/shipping-thresholds/deliverable | 
*ShippingThresholdApi* | [**getShippingThreshold**](docs/ShippingThresholdApi.md#getshippingthreshold) | **GET** /api/v1/shipping-thresholds/{threshold_id} | 
*ShippingThresholdApi* | [**listShippingThresholds**](docs/ShippingThresholdApi.md#listshippingthresholds) | **GET** /api/v1/shipping-thresholds/ | 
*ShippingThresholdApi* | [**updateShippingThreshold**](docs/ShippingThresholdApi.md#updateshippingthreshold) | **PUT** /api/v1/shipping-thresholds/{threshold_id} | 
*ShopApi* | [**shopEditorSave**](docs/ShopApi.md#shopeditorsave) | **POST** /api/v1/shop/editor | 
*SilentPartnerApi* | [**createSilentPartner**](docs/SilentPartnerApi.md#createsilentpartner) | **POST** /api/v1/silent-partners | 
*SilentPartnerApi* | [**deleteSilentPartner**](docs/SilentPartnerApi.md#deletesilentpartner) | **DELETE** /api/v1/silent-partners/{id} | 
*SilentPartnerApi* | [**getSilentPartner**](docs/SilentPartnerApi.md#getsilentpartner) | **GET** /api/v1/silent-partners/{id} | 
*SilentPartnerApi* | [**getSilentPartners**](docs/SilentPartnerApi.md#getsilentpartners) | **GET** /api/v1/silent-partners/ | 
*SilentPartnerApi* | [**updateSilentPartner**](docs/SilentPartnerApi.md#updatesilentpartner) | **PUT** /api/v1/silent-partners/{id} | 
*StilleApi* | [**stilleExportApi**](docs/StilleApi.md#stilleexportapi) | **GET** /api/v1/bookkeeping/stille/export | 
*StilleApi* | [**stilleReportApi**](docs/StilleApi.md#stillereportapi) | **GET** /api/v1/bookkeeping/stille/report | 
*StockMovementApi* | [**getStockMovement**](docs/StockMovementApi.md#getstockmovement) | **GET** /api/v1/stock-movements/{movement_id} | 
*StockMovementApi* | [**listStockMovements**](docs/StockMovementApi.md#liststockmovements) | **GET** /api/v1/stock-movements/ | 
*StockTransferApi* | [**createStockTransfer**](docs/StockTransferApi.md#createstocktransfer) | **POST** /api/v1/stock-transfers | 
*StockTransferApi* | [**deleteStockTransfer**](docs/StockTransferApi.md#deletestocktransfer) | **DELETE** /api/v1/stock-transfers/{stock_transfer_id} | 
*StockTransferApi* | [**getStockTransfer**](docs/StockTransferApi.md#getstocktransfer) | **GET** /api/v1/stock-transfers/{stock_transfer_id} | 
*StockTransferApi* | [**listStockTransfers**](docs/StockTransferApi.md#liststocktransfers) | **GET** /api/v1/stock-transfers/ | 
*StockTransferApi* | [**updateStockTransferStatus**](docs/StockTransferApi.md#updatestocktransferstatus) | **PUT** /api/v1/stock-transfers/{stock_transfer_id}/status | 
*SuitabilityApi* | [**shippingSuitabilityApi**](docs/SuitabilityApi.md#shippingsuitabilityapi) | **POST** /api/v1/shipping/suitability | 
*SupplierConditionApi* | [**createSupplierCondition**](docs/SupplierConditionApi.md#createsuppliercondition) | **POST** /api/v1/supplier-conditions | 
*SupplierConditionApi* | [**deleteSupplierCondition**](docs/SupplierConditionApi.md#deletesuppliercondition) | **DELETE** /api/v1/supplier-conditions/{supplier_condition_id} | 
*SupplierConditionApi* | [**getSupplierCondition**](docs/SupplierConditionApi.md#getsuppliercondition) | **GET** /api/v1/supplier-conditions/{supplier_condition_id} | 
*SupplierConditionApi* | [**listSupplierConditions**](docs/SupplierConditionApi.md#listsupplierconditions) | **GET** /api/v1/supplier-conditions/ | 
*SupplierConditionApi* | [**updateSupplierCondition**](docs/SupplierConditionApi.md#updatesuppliercondition) | **PUT** /api/v1/supplier-conditions/{supplier_condition_id} | 
*SupplierInvoiceApi* | [**createSupplierInvoice**](docs/SupplierInvoiceApi.md#createsupplierinvoice) | **POST** /api/v1/supplier-invoices | 
*SupplierInvoiceApi* | [**deleteSupplierInvoice**](docs/SupplierInvoiceApi.md#deletesupplierinvoice) | **DELETE** /api/v1/supplier-invoices/{supplier_invoice_id} | 
*SupplierInvoiceApi* | [**getSupplierInvoice**](docs/SupplierInvoiceApi.md#getsupplierinvoice) | **GET** /api/v1/supplier-invoices/{supplier_invoice_id} | 
*SupplierInvoiceApi* | [**listSupplierInvoices**](docs/SupplierInvoiceApi.md#listsupplierinvoices) | **GET** /api/v1/supplier-invoices/ | 
*SupplierInvoiceApi* | [**updateSupplierInvoice**](docs/SupplierInvoiceApi.md#updatesupplierinvoice) | **PUT** /api/v1/supplier-invoices/{supplier_invoice_id} | 
*SupplierInvoiceApi* | [**updateSupplierInvoiceStatus**](docs/SupplierInvoiceApi.md#updatesupplierinvoicestatus) | **PUT** /api/v1/supplier-invoices/{supplier_invoice_id}/status | 
*SupportChannelApi* | [**createChannelApi**](docs/SupportChannelApi.md#createchannelapi) | **POST** /api/v1/support/channels | 
*SupportChannelApi* | [**deleteChannelApi**](docs/SupportChannelApi.md#deletechannelapi) | **DELETE** /api/v1/support/channels/{channel_id} | 
*SupportChannelApi* | [**listChannelsApi**](docs/SupportChannelApi.md#listchannelsapi) | **GET** /api/v1/support/channels | 
*SupportChannelApi* | [**updateChannelApi**](docs/SupportChannelApi.md#updatechannelapi) | **PUT** /api/v1/support/channels/{channel_id} | 
*SupportTicketApi* | [**createTicketApi**](docs/SupportTicketApi.md#createticketapi) | **POST** /api/v1/support/tickets | 
*SupportTicketApi* | [**deleteTicketApi**](docs/SupportTicketApi.md#deleteticketapi) | **DELETE** /api/v1/support/tickets/{ticket_id} | 
*SupportTicketApi* | [**getTicketApi**](docs/SupportTicketApi.md#getticketapi) | **GET** /api/v1/support/tickets/{ticket_id} | 
*SupportTicketApi* | [**listTicketsApi**](docs/SupportTicketApi.md#listticketsapi) | **GET** /api/v1/support/tickets | 
*SupportTicketApi* | [**updateTicketApi**](docs/SupportTicketApi.md#updateticketapi) | **PUT** /api/v1/support/tickets/{ticket_id} | 
*TaxApi* | [**createTaxRate**](docs/TaxApi.md#createtaxrate) | **POST** /api/v1/tax-rates | Create a tax rate (&#39;admin:settings&#39;).
*TaxApi* | [**deleteTaxRate**](docs/TaxApi.md#deletetaxrate) | **DELETE** /api/v1/tax-rates/{id} | Delete a tax rate by id (&#39;admin:settings&#39;).
*TaxApi* | [**listTaxRates**](docs/TaxApi.md#listtaxrates) | **GET** /api/v1/tax-rates | List the calling tenant&#39;s tax rates.
*TaxApi* | [**updateTaxRate**](docs/TaxApi.md#updatetaxrate) | **PUT** /api/v1/tax-rates/{id} | Update a tax rate by id (&#39;admin:settings&#39;). Replaces all body fields.
*TenantSettingsApi* | [**getTenantSettings**](docs/TenantSettingsApi.md#gettenantsettings) | **GET** /api/v1/settings/tenant | 
*TenantSettingsApi* | [**updateTenantSettings**](docs/TenantSettingsApi.md#updatetenantsettings) | **PUT** /api/v1/settings/tenant | 
*TicketMessageApi* | [**listMessagesApi**](docs/TicketMessageApi.md#listmessagesapi) | **GET** /api/v1/support/tickets/{ticket_id}/messages | 
*TicketMessageApi* | [**sendMessageApi**](docs/TicketMessageApi.md#sendmessageapi) | **POST** /api/v1/support/tickets/{ticket_id}/messages | 
*TimeEntriesApi* | [**clockInTimeEntry**](docs/TimeEntriesApi.md#clockintimeentry) | **POST** /api/v1/time-entries | Clock in for the authenticated user (resolved via their employee profile).
*TimeEntriesApi* | [**clockOutTimeEntry**](docs/TimeEntriesApi.md#clockouttimeentry) | **PATCH** /api/v1/time-entries/{id} | Clock out an entry: the entry&#39;s owner, or anyone with &#39;time_entries:write&#39;.
*TimeEntriesApi* | [**getLaborCosts**](docs/TimeEntriesApi.md#getlaborcosts) | **GET** /api/v1/labor-costs | Labor-cost report: worked hours aggregated per employee / order / day,
valued at the employee&#39;s hourly cost rate.
*TimeEntriesApi* | [**listTimeEntries**](docs/TimeEntriesApi.md#listtimeentries) | **GET** /api/v1/time-entries | List time entries with optional date-range / active / employee filters.
*TrainingAssignmentApi* | [**createTrainingAssignment**](docs/TrainingAssignmentApi.md#createtrainingassignment) | **POST** /api/v1/training-assignments | 
*TrainingAssignmentApi* | [**deleteTrainingAssignment**](docs/TrainingAssignmentApi.md#deletetrainingassignment) | **DELETE** /api/v1/training-assignments/{id} | 
*TrainingAssignmentApi* | [**getTrainingAssignment**](docs/TrainingAssignmentApi.md#gettrainingassignment) | **GET** /api/v1/training-assignments/{id} | 
*TrainingAssignmentApi* | [**getTrainingAssignments**](docs/TrainingAssignmentApi.md#gettrainingassignments) | **GET** /api/v1/training-assignments/ | 
*TrainingAssignmentApi* | [**updateTrainingAssignment**](docs/TrainingAssignmentApi.md#updatetrainingassignment) | **PUT** /api/v1/training-assignments/{id} | 
*TrainingsApi* | [**getMyTrainings**](docs/TrainingsApi.md#getmytrainings) | **GET** /api/v1/trainings/me | 
*TrainingsApi* | [**getTrainingContent**](docs/TrainingsApi.md#gettrainingcontent) | **GET** /api/v1/trainings/content/{code} | 
*TrainingsApi* | [**getTrainingOverview**](docs/TrainingsApi.md#gettrainingoverview) | **GET** /api/v1/trainings/overview | 
*TrainingsApi* | [**submitTrainingResult**](docs/TrainingsApi.md#submittrainingresult) | **POST** /api/v1/trainings/submit-result | 
*UserApi* | [**changePassword**](docs/UserApi.md#changepassword) | **POST** /user/change-password | Change the current user&#39;s password (requires the current password).
*UserApi* | [**createTeam**](docs/UserApi.md#createteam) | **POST** /user/teams | Create a new team within the current tenant
*UserApi* | [**generateApiKey**](docs/UserApi.md#generateapikey) | **POST** /user/api-key | Generate a new API key for the current user
*UserApi* | [**inviteUser**](docs/UserApi.md#inviteuser) | **POST** /user/invite | Invite a user to the current tenant/organization
*UserApi* | [**listTeams**](docs/UserApi.md#listteams) | **GET** /user/teams | List all teams in the current tenant
*UserApi* | [**removeUserFromOrg**](docs/UserApi.md#removeuserfromorg) | **DELETE** /user/remove | Remove a user from the current organization
*UserApi* | [**updateProfile**](docs/UserApi.md#updateprofile) | **PUT** /user/profile | Update the current user&#39;s profile
*UserApi* | [**userProfile**](docs/UserApi.md#userprofile) | **GET** /user/profile | Get the current user&#39;s profile
*UserApi* | [**userTenants**](docs/UserApi.md#usertenants) | **GET** /user/tenants | List all tenants (organizations) the current user belongs to
*UserManagementApi* | [**getUser**](docs/UserManagementApi.md#getuser) | **GET** /api/v1/users/{user_id} | 
*UserManagementApi* | [**listUsers**](docs/UserManagementApi.md#listusers) | **GET** /api/v1/users | 
*UserManagementApi* | [**removeUser**](docs/UserManagementApi.md#removeuser) | **DELETE** /api/v1/users/{user_id} | 
*UserManagementApi* | [**updateUserPermissions**](docs/UserManagementApi.md#updateuserpermissions) | **PUT** /api/v1/users/{user_id}/permissions | 
*UserManagementApi* | [**updateUserRole**](docs/UserManagementApi.md#updateuserrole) | **PUT** /api/v1/users/{user_id}/role | 
*UstvaApi* | [**jahresustApi**](docs/UstvaApi.md#jahresustapi) | **GET** /api/v1/bookkeeping/jahresust | 
*UstvaApi* | [**ustvaApi**](docs/UstvaApi.md#ustvaapi) | **GET** /api/v1/bookkeeping/ustva | 
*VoucherApi* | [**createVoucher**](docs/VoucherApi.md#createvoucher) | **POST** /api/v1/vouchers | 
*VoucherApi* | [**deleteVoucher**](docs/VoucherApi.md#deletevoucher) | **DELETE** /api/v1/vouchers/{voucher_id} | 
*VoucherApi* | [**getVoucher**](docs/VoucherApi.md#getvoucher) | **GET** /api/v1/vouchers/{voucher_id} | 
*VoucherApi* | [**listVouchers**](docs/VoucherApi.md#listvouchers) | **GET** /api/v1/vouchers/ | 
*VoucherApi* | [**updateVoucher**](docs/VoucherApi.md#updatevoucher) | **PUT** /api/v1/vouchers/{voucher_id} | 
*VoucherApi* | [**voucherRestore**](docs/VoucherApi.md#voucherrestore) | **POST** /api/v1/vouchers/{voucher_id}/restore | 
*WarehouseApi* | [**createWarehouse**](docs/WarehouseApi.md#createwarehouse) | **POST** /api/v1/warehouses | 
*WarehouseApi* | [**deleteWarehouse**](docs/WarehouseApi.md#deletewarehouse) | **DELETE** /api/v1/warehouses/{warehouse_id} | 
*WarehouseApi* | [**getWarehouse**](docs/WarehouseApi.md#getwarehouse) | **GET** /api/v1/warehouses/{warehouse_id} | 
*WarehouseApi* | [**listWarehouses**](docs/WarehouseApi.md#listwarehouses) | **GET** /api/v1/warehouses/ | 
*WarehouseApi* | [**updateWarehouse**](docs/WarehouseApi.md#updatewarehouse) | **PUT** /api/v1/warehouses/{warehouse_id} | 
*WarehouseStockApi* | [**createWarehouseStock**](docs/WarehouseStockApi.md#createwarehousestock) | **POST** /api/v1/warehouses/{warehouse_id}/stock | 
*WarehouseStockApi* | [**deleteWarehouseStock**](docs/WarehouseStockApi.md#deletewarehousestock) | **DELETE** /api/v1/warehouses/{warehouse_id}/stock/{product_id} | 
*WarehouseStockApi* | [**listWarehouseStock**](docs/WarehouseStockApi.md#listwarehousestock) | **GET** /api/v1/warehouses/{warehouse_id}/stock | 
*WarehouseStockApi* | [**updateWarehouseStock**](docs/WarehouseStockApi.md#updatewarehousestock) | **PUT** /api/v1/warehouses/{warehouse_id}/stock/{product_id} | 
*WebhooksApi* | [**createSubscription**](docs/WebhooksApi.md#createsubscription) | **POST** /api/v1/webhook-subscriptions | Create a webhook subscription (outbound hook).
*WebhooksApi* | [**deleteSubscription**](docs/WebhooksApi.md#deletesubscription) | **DELETE** /api/v1/webhook-subscriptions/{subscription_id} | Delete a webhook subscription.
*WebhooksApi* | [**emitApi**](docs/WebhooksApi.md#emitapi) | **POST** /api/v1/webhooks/emit | Manually fire an event against matching hooks (for testing/flows).
*WebhooksApi* | [**listEvent**](docs/WebhooksApi.md#listevent) | **GET** /api/v1/webhook-events | List webhook events (inbound + outbound log).
*WebhooksApi* | [**listSubscriptions**](docs/WebhooksApi.md#listsubscriptions) | **GET** /api/v1/webhook-subscriptions | List webhook subscriptions for the tenant.
*WebhooksApi* | [**updateSubscription**](docs/WebhooksApi.md#updatesubscription) | **PUT** /api/v1/webhook-subscriptions/{subscription_id} | Update a webhook subscription.
*WorkflowsApi* | [**listWorkflowsApi**](docs/WorkflowsApi.md#listworkflowsapi) | **GET** /api/v1/workflows | 
*WorkflowsApi* | [**setWorkflowEnabledApi**](docs/WorkflowsApi.md#setworkflowenabledapi) | **PUT** /api/v1/workflows/{workflow_id}/enabled | 
*ZugferdApi* | [**generateZugferdApi**](docs/ZugferdApi.md#generatezugferdapi) | **GET** /api/v1/invoices/{id}/zugferd | 


## Documentation For Models

 - [Absence](docs/Absence.md)
 - [AbsenceCreate](docs/AbsenceCreate.md)
 - [AbsenceStatus](docs/AbsenceStatus.md)
 - [AbsenceType](docs/AbsenceType.md)
 - [AbsenceUpdate](docs/AbsenceUpdate.md)
 - [AcceptInviteRequest](docs/AcceptInviteRequest.md)
 - [AccountOverview](docs/AccountOverview.md)
 - [Activity](docs/Activity.md)
 - [ActivityCreate](docs/ActivityCreate.md)
 - [ActivityStatus](docs/ActivityStatus.md)
 - [ActivityStatusUpdate](docs/ActivityStatusUpdate.md)
 - [ActivityType](docs/ActivityType.md)
 - [ActivityUpdate](docs/ActivityUpdate.md)
 - [Address](docs/Address.md)
 - [AiConfigDto](docs/AiConfigDto.md)
 - [AiSuggestion](docs/AiSuggestion.md)
 - [AiSuggestionRequest](docs/AiSuggestionRequest.md)
 - [AiWorkerConfig](docs/AiWorkerConfig.md)
 - [AllocatePaymentRequest](docs/AllocatePaymentRequest.md)
 - [AnlageGErgebnis](docs/AnlageGErgebnis.md)
 - [AnlageGKfzHinweis](docs/AnlageGKfzHinweis.md)
 - [AnlageSErgebnis](docs/AnlageSErgebnis.md)
 - [AnlageSKfzHinweis](docs/AnlageSKfzHinweis.md)
 - [ApiResponseGdprExport](docs/ApiResponseGdprExport.md)
 - [ApiResponseGdprExportData](docs/ApiResponseGdprExportData.md)
 - [ApiResponseString](docs/ApiResponseString.md)
 - [ApiResponseSubscriptionOverview](docs/ApiResponseSubscriptionOverview.md)
 - [ApiResponseSubscriptionOverviewData](docs/ApiResponseSubscriptionOverviewData.md)
 - [ApiResponseTeam](docs/ApiResponseTeam.md)
 - [ApiResponseTeamData](docs/ApiResponseTeamData.md)
 - [ApiResponseUserProfile](docs/ApiResponseUserProfile.md)
 - [ApiResponseUserProfileData](docs/ApiResponseUserProfileData.md)
 - [ApiResponseVecPlan](docs/ApiResponseVecPlan.md)
 - [ApiResponseVecPlanDataInner](docs/ApiResponseVecPlanDataInner.md)
 - [ApiResponseVecTeam](docs/ApiResponseVecTeam.md)
 - [ApiResponseVecUserTenantInfo](docs/ApiResponseVecUserTenantInfo.md)
 - [ApiResponseVecUserTenantInfoDataInner](docs/ApiResponseVecUserTenantInfoDataInner.md)
 - [ApplicationFilter](docs/ApplicationFilter.md)
 - [ApplicationStatus](docs/ApplicationStatus.md)
 - [ApplicationStatusDto](docs/ApplicationStatusDto.md)
 - [AppointmentStatusUpdate](docs/AppointmentStatusUpdate.md)
 - [AssignmentStatus](docs/AssignmentStatus.md)
 - [Attachment](docs/Attachment.md)
 - [AttachmentCreate](docs/AttachmentCreate.md)
 - [AttachmentVersion](docs/AttachmentVersion.md)
 - [AuthResponse](docs/AuthResponse.md)
 - [Automation](docs/Automation.md)
 - [AutomationDto](docs/AutomationDto.md)
 - [BWAExpenses](docs/BWAExpenses.md)
 - [BWAReport](docs/BWAReport.md)
 - [BWARevenue](docs/BWARevenue.md)
 - [BWASummary](docs/BWASummary.md)
 - [BalanceItem](docs/BalanceItem.md)
 - [BalanceSheet](docs/BalanceSheet.md)
 - [BankLookup](docs/BankLookup.md)
 - [Betriebsstaette](docs/Betriebsstaette.md)
 - [BetriebsstaettenDetail](docs/BetriebsstaettenDetail.md)
 - [BilanzItem](docs/BilanzItem.md)
 - [BilanzReport](docs/BilanzReport.md)
 - [Bom](docs/Bom.md)
 - [BomCreate](docs/BomCreate.md)
 - [BomStatus](docs/BomStatus.md)
 - [BomUpdate](docs/BomUpdate.md)
 - [BoxFit](docs/BoxFit.md)
 - [Budget](docs/Budget.md)
 - [BudgetErgebnis](docs/BudgetErgebnis.md)
 - [BudgetGoalRequest](docs/BudgetGoalRequest.md)
 - [BudgetKategorie](docs/BudgetKategorie.md)
 - [CartItemInput](docs/CartItemInput.md)
 - [CashflowReport](docs/CashflowReport.md)
 - [CategoryTotal](docs/CategoryTotal.md)
 - [ChangePasswordRequest](docs/ChangePasswordRequest.md)
 - [ChangelogEntry](docs/ChangelogEntry.md)
 - [CheckStatus](docs/CheckStatus.md)
 - [CommunicationChannel](docs/CommunicationChannel.md)
 - [CommunicationDirection](docs/CommunicationDirection.md)
 - [CompanyType](docs/CompanyType.md)
 - [ComplianceEntry](docs/ComplianceEntry.md)
 - [ComplianceTraining](docs/ComplianceTraining.md)
 - [ComplianceTrainingCreate](docs/ComplianceTrainingCreate.md)
 - [ComplianceTrainingUpdate](docs/ComplianceTrainingUpdate.md)
 - [ConfigFieldInfo](docs/ConfigFieldInfo.md)
 - [ConfigFieldKind](docs/ConfigFieldKind.md)
 - [ConfigFieldKindOneOf](docs/ConfigFieldKindOneOf.md)
 - [ConfigFieldKindOneOf1](docs/ConfigFieldKindOneOf1.md)
 - [ConfigFieldKindOneOf2](docs/ConfigFieldKindOneOf2.md)
 - [ConfigFieldKindOneOf3](docs/ConfigFieldKindOneOf3.md)
 - [ConfigFieldKindOneOf4](docs/ConfigFieldKindOneOf4.md)
 - [ConnectorType](docs/ConnectorType.md)
 - [Contact](docs/Contact.md)
 - [ContactCreate](docs/ContactCreate.md)
 - [ContactHistoryResponse](docs/ContactHistoryResponse.md)
 - [ContactInfo](docs/ContactInfo.md)
 - [ContactTimelineResponse](docs/ContactTimelineResponse.md)
 - [ContactType](docs/ContactType.md)
 - [ContactUpdate](docs/ContactUpdate.md)
 - [ConvertResponse](docs/ConvertResponse.md)
 - [CostingLine](docs/CostingLine.md)
 - [CountryCode](docs/CountryCode.md)
 - [Coupon](docs/Coupon.md)
 - [CouponCreate](docs/CouponCreate.md)
 - [CouponUpdate](docs/CouponUpdate.md)
 - [CouponValidation](docs/CouponValidation.md)
 - [CreateChannelDto](docs/CreateChannelDto.md)
 - [CreateConnectionRequest](docs/CreateConnectionRequest.md)
 - [CreateEmissionEntry](docs/CreateEmissionEntry.md)
 - [CreateEmissionTarget](docs/CreateEmissionTarget.md)
 - [CreateShipmentRequest](docs/CreateShipmentRequest.md)
 - [CreateSubscriptionRequest](docs/CreateSubscriptionRequest.md)
 - [CreateTicketRequest](docs/CreateTicketRequest.md)
 - [CurrencyCode](docs/CurrencyCode.md)
 - [CurrentInventoryValue](docs/CurrentInventoryValue.md)
 - [Customer](docs/Customer.md)
 - [CustomerCommunication](docs/CustomerCommunication.md)
 - [CustomerCommunicationCreate](docs/CustomerCommunicationCreate.md)
 - [CustomerCommunicationUpdate](docs/CustomerCommunicationUpdate.md)
 - [CustomerCreate](docs/CustomerCreate.md)
 - [CustomerGroup](docs/CustomerGroup.md)
 - [CustomerGroupCreate](docs/CustomerGroupCreate.md)
 - [CustomerGroupUpdate](docs/CustomerGroupUpdate.md)
 - [CustomerInfo](docs/CustomerInfo.md)
 - [CustomerUpdate](docs/CustomerUpdate.md)
 - [DataQuality](docs/DataQuality.md)
 - [DatevBookingPreview](docs/DatevBookingPreview.md)
 - [DatevExportResponse](docs/DatevExportResponse.md)
 - [DatevImportResponse](docs/DatevImportResponse.md)
 - [DatevImportRow](docs/DatevImportRow.md)
 - [Declaration](docs/Declaration.md)
 - [DeclarationCreate](docs/DeclarationCreate.md)
 - [DeclarationType](docs/DeclarationType.md)
 - [DeclarationUpdate](docs/DeclarationUpdate.md)
 - [DeliverableResponse](docs/DeliverableResponse.md)
 - [DeliveryAppointment](docs/DeliveryAppointment.md)
 - [DeliveryAppointmentCreate](docs/DeliveryAppointmentCreate.md)
 - [DeliveryAppointmentStatus](docs/DeliveryAppointmentStatus.md)
 - [DeliveryDate](docs/DeliveryDate.md)
 - [DeliveryDateCreate](docs/DeliveryDateCreate.md)
 - [DeliveryDateStatus](docs/DeliveryDateStatus.md)
 - [DeliveryDateStatusUpdate](docs/DeliveryDateStatusUpdate.md)
 - [DeliveryDateUpdate](docs/DeliveryDateUpdate.md)
 - [DeliveryNote](docs/DeliveryNote.md)
 - [DeliveryNoteCreate](docs/DeliveryNoteCreate.md)
 - [DhlCredentials](docs/DhlCredentials.md)
 - [DiscountType](docs/DiscountType.md)
 - [DocumentType](docs/DocumentType.md)
 - [DownPaymentInvoice](docs/DownPaymentInvoice.md)
 - [DpaAcceptRequest](docs/DpaAcceptRequest.md)
 - [DpaStatus](docs/DpaStatus.md)
 - [DunningResult](docs/DunningResult.md)
 - [EBilanzReport](docs/EBilanzReport.md)
 - [EksErgebnis](docs/EksErgebnis.md)
 - [EksMonatsWert](docs/EksMonatsWert.md)
 - [ElsterStatus](docs/ElsterStatus.md)
 - [EmailTemplate](docs/EmailTemplate.md)
 - [EmailTemplateCreate](docs/EmailTemplateCreate.md)
 - [EmailTemplateStatus](docs/EmailTemplateStatus.md)
 - [EmailTemplateUpdate](docs/EmailTemplateUpdate.md)
 - [EmissionEntry](docs/EmissionEntry.md)
 - [EmissionFactorResponse](docs/EmissionFactorResponse.md)
 - [EmissionMethod](docs/EmissionMethod.md)
 - [EmissionTarget](docs/EmissionTarget.md)
 - [EmissionTargetScope](docs/EmissionTargetScope.md)
 - [EmissionsExportResponse](docs/EmissionsExportResponse.md)
 - [EmissionsReport](docs/EmissionsReport.md)
 - [EmitEventRequest](docs/EmitEventRequest.md)
 - [Employee](docs/Employee.md)
 - [EmployeeCreate](docs/EmployeeCreate.md)
 - [EmployeeStatus](docs/EmployeeStatus.md)
 - [EmployeeUpdate](docs/EmployeeUpdate.md)
 - [EmploymentType](docs/EmploymentType.md)
 - [EuerDetailErgebnis](docs/EuerDetailErgebnis.md)
 - [EuerErgebnis](docs/EuerErgebnis.md)
 - [EuerKatSumme](docs/EuerKatSumme.md)
 - [EuerZeile](docs/EuerZeile.md)
 - [EuerZeileDetail](docs/EuerZeileDetail.md)
 - [EventSubscription](docs/EventSubscription.md)
 - [ExecutionStatus](docs/ExecutionStatus.md)
 - [ExpenseItem](docs/ExpenseItem.md)
 - [ExtraPayment](docs/ExtraPayment.md)
 - [FeatureSettings](docs/FeatureSettings.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [FristEintrag](docs/FristEintrag.md)
 - [FristenErgebnis](docs/FristenErgebnis.md)
 - [GatewayOAuthAuthorizeRequest](docs/GatewayOAuthAuthorizeRequest.md)
 - [GatewayOAuthAuthorizeResponse](docs/GatewayOAuthAuthorizeResponse.md)
 - [GatewayOAuthCallbackRequest](docs/GatewayOAuthCallbackRequest.md)
 - [GatewayType](docs/GatewayType.md)
 - [GdprActivity](docs/GdprActivity.md)
 - [GdprApiKey](docs/GdprApiKey.md)
 - [GdprBillingInfo](docs/GdprBillingInfo.md)
 - [GdprExport](docs/GdprExport.md)
 - [GdprNotification](docs/GdprNotification.md)
 - [GdprRefreshToken](docs/GdprRefreshToken.md)
 - [GdprTenant](docs/GdprTenant.md)
 - [GdprUsageEvent](docs/GdprUsageEvent.md)
 - [GdprUser](docs/GdprUser.md)
 - [Gender](docs/Gender.md)
 - [GenerateCountRequest](docs/GenerateCountRequest.md)
 - [GenerateVariantsRequest](docs/GenerateVariantsRequest.md)
 - [GewerbesteuerErgebnis](docs/GewerbesteuerErgebnis.md)
 - [GewinnverwendungsExportResponse](docs/GewinnverwendungsExportResponse.md)
 - [GewinnverwendungsReport](docs/GewinnverwendungsReport.md)
 - [GewinnverwendungsZeile](docs/GewinnverwendungsZeile.md)
 - [GezReport](docs/GezReport.md)
 - [GhgScope](docs/GhgScope.md)
 - [GoBDExportResponse](docs/GoBDExportResponse.md)
 - [GoodsReceipt](docs/GoodsReceipt.md)
 - [GroupFigure](docs/GroupFigure.md)
 - [GroupFigureCreate](docs/GroupFigureCreate.md)
 - [GroupFigureUpdate](docs/GroupFigureUpdate.md)
 - [GuVItem](docs/GuVItem.md)
 - [GuVReport](docs/GuVReport.md)
 - [HebesatzLookup](docs/HebesatzLookup.md)
 - [HrTrainingOverview](docs/HrTrainingOverview.md)
 - [ImportJobStatus](docs/ImportJobStatus.md)
 - [ImportStartRequest](docs/ImportStartRequest.md)
 - [ImportStartResponse](docs/ImportStartResponse.md)
 - [ImportTestRequest](docs/ImportTestRequest.md)
 - [ImportTestResponse](docs/ImportTestResponse.md)
 - [IncomeStatement](docs/IncomeStatement.md)
 - [InstituteCheckItem](docs/InstituteCheckItem.md)
 - [InstituteDeadlines](docs/InstituteDeadlines.md)
 - [InstituteProfile](docs/InstituteProfile.md)
 - [InstituteProfileUpdate](docs/InstituteProfileUpdate.md)
 - [InstituteStatus](docs/InstituteStatus.md)
 - [InstituteType](docs/InstituteType.md)
 - [InstrumentType](docs/InstrumentType.md)
 - [InventoryCount](docs/InventoryCount.md)
 - [InventoryCountCreate](docs/InventoryCountCreate.md)
 - [InventoryCountStatus](docs/InventoryCountStatus.md)
 - [InventoryCountStatusUpdate](docs/InventoryCountStatusUpdate.md)
 - [InventoryCountUpdate](docs/InventoryCountUpdate.md)
 - [InventoryValuePoint](docs/InventoryValuePoint.md)
 - [InviteRequest](docs/InviteRequest.md)
 - [Invoice](docs/Invoice.md)
 - [InvoiceCreate](docs/InvoiceCreate.md)
 - [InvoiceLineItem](docs/InvoiceLineItem.md)
 - [InvoiceMatchRequest](docs/InvoiceMatchRequest.md)
 - [InvoicePdfUrlResponse](docs/InvoicePdfUrlResponse.md)
 - [InvoiceStatus](docs/InvoiceStatus.md)
 - [InvoiceType](docs/InvoiceType.md)
 - [JahresUstErgebnis](docs/JahresUstErgebnis.md)
 - [Job](docs/Job.md)
 - [JobApplication](docs/JobApplication.md)
 - [JobPosting](docs/JobPosting.md)
 - [JobPostingCreate](docs/JobPostingCreate.md)
 - [JobPostingFilter](docs/JobPostingFilter.md)
 - [JobPostingStatus](docs/JobPostingStatus.md)
 - [JobPostingUpdate](docs/JobPostingUpdate.md)
 - [JobStatus](docs/JobStatus.md)
 - [JobTitleGap](docs/JobTitleGap.md)
 - [KontoItem](docs/KontoItem.md)
 - [KontoReport](docs/KontoReport.md)
 - [KonzernBeteiligung](docs/KonzernBeteiligung.md)
 - [KonzernExportResponse](docs/KonzernExportResponse.md)
 - [KonzernStatus](docs/KonzernStatus.md)
 - [KonzernThresholds](docs/KonzernThresholds.md)
 - [KostenEintrag](docs/KostenEintrag.md)
 - [KostenVorschau](docs/KostenVorschau.md)
 - [KstErgebnis](docs/KstErgebnis.md)
 - [KycRecord](docs/KycRecord.md)
 - [KycRecordCreate](docs/KycRecordCreate.md)
 - [KycRecordUpdate](docs/KycRecordUpdate.md)
 - [LaborCostRow](docs/LaborCostRow.md)
 - [LanguageCode](docs/LanguageCode.md)
 - [Lead](docs/Lead.md)
 - [LeadStatus](docs/LeadStatus.md)
 - [LeadUpdate](docs/LeadUpdate.md)
 - [LegalDocType](docs/LegalDocType.md)
 - [LegalDocument](docs/LegalDocument.md)
 - [LegalDocumentReset](docs/LegalDocumentReset.md)
 - [LegalDocumentUpsert](docs/LegalDocumentUpsert.md)
 - [LiquidityPosition](docs/LiquidityPosition.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [MagicLinkRequest](docs/MagicLinkRequest.md)
 - [MagicLinkVerifyRequest](docs/MagicLinkVerifyRequest.md)
 - [MarketplaceConnection](docs/MarketplaceConnection.md)
 - [MarketplaceSyncLog](docs/MarketplaceSyncLog.md)
 - [MarketplaceWebhookEvent](docs/MarketplaceWebhookEvent.md)
 - [MessageDirection](docs/MessageDirection.md)
 - [MessageType](docs/MessageType.md)
 - [MeteredUsage](docs/MeteredUsage.md)
 - [MethodSuitability](docs/MethodSuitability.md)
 - [MirrorTriggerResponse](docs/MirrorTriggerResponse.md)
 - [Model](docs/Model.md)
 - [MovementType](docs/MovementType.md)
 - [MyTrainingItem](docs/MyTrainingItem.md)
 - [NewVersionRequest](docs/NewVersionRequest.md)
 - [NotificationDto](docs/NotificationDto.md)
 - [OAuthAuthorizeRequest](docs/OAuthAuthorizeRequest.md)
 - [OAuthAuthorizeResponse](docs/OAuthAuthorizeResponse.md)
 - [OAuthCallbackRequest](docs/OAuthCallbackRequest.md)
 - [OcrTextRequest](docs/OcrTextRequest.md)
 - [OffenlegungItem](docs/OffenlegungItem.md)
 - [OffenlegungReport](docs/OffenlegungReport.md)
 - [OpenItem](docs/OpenItem.md)
 - [Order](docs/Order.md)
 - [OrderConfirmation](docs/OrderConfirmation.md)
 - [OrderConfirmationCreate](docs/OrderConfirmationCreate.md)
 - [OrderCreate](docs/OrderCreate.md)
 - [OrderStateUpdate](docs/OrderStateUpdate.md)
 - [OrderStatus](docs/OrderStatus.md)
 - [OrderTagsRequest](docs/OrderTagsRequest.md)
 - [OrderUpdate](docs/OrderUpdate.md)
 - [OssDependency](docs/OssDependency.md)
 - [OssReport](docs/OssReport.md)
 - [Package](docs/Package.md)
 - [PackingCompleteRequest](docs/PackingCompleteRequest.md)
 - [PackingCompleteResponse](docs/PackingCompleteResponse.md)
 - [PackingQueue](docs/PackingQueue.md)
 - [PackingQueueItem](docs/PackingQueueItem.md)
 - [PackingVideoResponse](docs/PackingVideoResponse.md)
 - [PartialFeatureSettings](docs/PartialFeatureSettings.md)
 - [Participation](docs/Participation.md)
 - [ParticipationCreate](docs/ParticipationCreate.md)
 - [ParticipationUpdate](docs/ParticipationUpdate.md)
 - [PayGapExportResponse](docs/PayGapExportResponse.md)
 - [PayGapInfoResponse](docs/PayGapInfoResponse.md)
 - [PayGapReport](docs/PayGapReport.md)
 - [Payment](docs/Payment.md)
 - [PaymentCondition](docs/PaymentCondition.md)
 - [PaymentCreate](docs/PaymentCreate.md)
 - [PaymentGateway](docs/PaymentGateway.md)
 - [PaymentGatewayCreate](docs/PaymentGatewayCreate.md)
 - [PaymentGatewayUpdate](docs/PaymentGatewayUpdate.md)
 - [PaymentMethod](docs/PaymentMethod.md)
 - [PaymentStatus](docs/PaymentStatus.md)
 - [PayrollAutopayPayload](docs/PayrollAutopayPayload.md)
 - [PayrollCreatePayload](docs/PayrollCreatePayload.md)
 - [PayrollEntryApi](docs/PayrollEntryApi.md)
 - [PayrollMonth](docs/PayrollMonth.md)
 - [PayrollPayPayload](docs/PayrollPayPayload.md)
 - [PayrollRunApi](docs/PayrollRunApi.md)
 - [PayrollRunStatus](docs/PayrollRunStatus.md)
 - [PayrollSummary](docs/PayrollSummary.md)
 - [PayrollSummaryItem](docs/PayrollSummaryItem.md)
 - [PeppolResponse](docs/PeppolResponse.md)
 - [Plan](docs/Plan.md)
 - [PlanFeatures](docs/PlanFeatures.md)
 - [PlanLimits](docs/PlanLimits.md)
 - [PlatformInfo](docs/PlatformInfo.md)
 - [PlausibilityCheck](docs/PlausibilityCheck.md)
 - [PlausibilityReport](docs/PlausibilityReport.md)
 - [PlausibilitySummary](docs/PlausibilitySummary.md)
 - [PluginError](docs/PluginError.md)
 - [PluginErrorOneOf](docs/PluginErrorOneOf.md)
 - [PluginErrorOneOf1](docs/PluginErrorOneOf1.md)
 - [PluginErrorOneOf2](docs/PluginErrorOneOf2.md)
 - [PluginErrorOneOf3](docs/PluginErrorOneOf3.md)
 - [PluginErrorOneOf4](docs/PluginErrorOneOf4.md)
 - [PluginErrorOneOf5](docs/PluginErrorOneOf5.md)
 - [PluginErrorOneOf6](docs/PluginErrorOneOf6.md)
 - [PluginPricing](docs/PluginPricing.md)
 - [PluginPricingOneOf](docs/PluginPricingOneOf.md)
 - [PluginPricingOneOf1](docs/PluginPricingOneOf1.md)
 - [PluginPricingOneOf2](docs/PluginPricingOneOf2.md)
 - [PnLItem](docs/PnLItem.md)
 - [PosRegister](docs/PosRegister.md)
 - [PosRegisterCreate](docs/PosRegisterCreate.md)
 - [PosRegisterStatus](docs/PosRegisterStatus.md)
 - [PosTable](docs/PosTable.md)
 - [PosTableCreate](docs/PosTableCreate.md)
 - [PosTableStatus](docs/PosTableStatus.md)
 - [PostingCategory](docs/PostingCategory.md)
 - [PostingCategoryCreate](docs/PostingCategoryCreate.md)
 - [PostingCategoryType](docs/PostingCategoryType.md)
 - [PostingCategoryUpdate](docs/PostingCategoryUpdate.md)
 - [PrecedingSalesVoucherType](docs/PrecedingSalesVoucherType.md)
 - [PriceTier](docs/PriceTier.md)
 - [PriceTierCreate](docs/PriceTierCreate.md)
 - [PriceTierUpdate](docs/PriceTierUpdate.md)
 - [PrintDeliveryNoteResponse](docs/PrintDeliveryNoteResponse.md)
 - [PrintLabelResponse](docs/PrintLabelResponse.md)
 - [Product](docs/Product.md)
 - [ProductAttribute](docs/ProductAttribute.md)
 - [ProductAttributeCreate](docs/ProductAttributeCreate.md)
 - [ProductAttributeUpdate](docs/ProductAttributeUpdate.md)
 - [ProductCategory](docs/ProductCategory.md)
 - [ProductCategoryCreate](docs/ProductCategoryCreate.md)
 - [ProductCategoryUpdate](docs/ProductCategoryUpdate.md)
 - [ProductCreate](docs/ProductCreate.md)
 - [ProductStock](docs/ProductStock.md)
 - [ProductUpdate](docs/ProductUpdate.md)
 - [ProductVariant](docs/ProductVariant.md)
 - [ProductVariantCreate](docs/ProductVariantCreate.md)
 - [ProductVariantUpdate](docs/ProductVariantUpdate.md)
 - [ProductionOrder](docs/ProductionOrder.md)
 - [ProductionOrderCosting](docs/ProductionOrderCosting.md)
 - [ProductionOrderStatus](docs/ProductionOrderStatus.md)
 - [ProductionOrderStatusUpdate](docs/ProductionOrderStatusUpdate.md)
 - [ProformaInvoice](docs/ProformaInvoice.md)
 - [ProformaInvoiceCreate](docs/ProformaInvoiceCreate.md)
 - [ProformaInvoiceStatus](docs/ProformaInvoiceStatus.md)
 - [ProformaInvoiceUpdate](docs/ProformaInvoiceUpdate.md)
 - [ProposedAssignment](docs/ProposedAssignment.md)
 - [ProviderInfo](docs/ProviderInfo.md)
 - [PublicDeliveryAppointmentRequest](docs/PublicDeliveryAppointmentRequest.md)
 - [PublicDeliveryAppointmentResponse](docs/PublicDeliveryAppointmentResponse.md)
 - [PublicDeliveryAppointmentStatusResponse](docs/PublicDeliveryAppointmentStatusResponse.md)
 - [PublicPosting](docs/PublicPosting.md)
 - [PublicReturnItem](docs/PublicReturnItem.md)
 - [PublicReturnRequest](docs/PublicReturnRequest.md)
 - [PublicReturnResponse](docs/PublicReturnResponse.md)
 - [PublicReturnStatusResponse](docs/PublicReturnStatusResponse.md)
 - [PurchaseOrder](docs/PurchaseOrder.md)
 - [PurchaseOrderCreate](docs/PurchaseOrderCreate.md)
 - [PurchaseOrderStatus](docs/PurchaseOrderStatus.md)
 - [PurchaseOrderStatusUpdate](docs/PurchaseOrderStatusUpdate.md)
 - [PurchaseOrderUpdate](docs/PurchaseOrderUpdate.md)
 - [QRCodeResponse](docs/QRCodeResponse.md)
 - [QuartileBand](docs/QuartileBand.md)
 - [QuizQuestion](docs/QuizQuestion.md)
 - [QuotaOverride](docs/QuotaOverride.md)
 - [QuotaOverrideFeatures](docs/QuotaOverrideFeatures.md)
 - [QuotaOverview](docs/QuotaOverview.md)
 - [Quotation](docs/Quotation.md)
 - [QuotationCreate](docs/QuotationCreate.md)
 - [RateRequest](docs/RateRequest.md)
 - [RateResponse](docs/RateResponse.md)
 - [RecurringTemplate](docs/RecurringTemplate.md)
 - [RecurringTemplateCreate](docs/RecurringTemplateCreate.md)
 - [RecurringTemplateType](docs/RecurringTemplateType.md)
 - [RecurringTemplateUpdate](docs/RecurringTemplateUpdate.md)
 - [ReferenceType](docs/ReferenceType.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ReminderLevel](docs/ReminderLevel.md)
 - [RemoveUserRequest](docs/RemoveUserRequest.md)
 - [ReorderProposalLine](docs/ReorderProposalLine.md)
 - [ReorderProposalResponse](docs/ReorderProposalResponse.md)
 - [ReplenishmentResponse](docs/ReplenishmentResponse.md)
 - [ReplenishmentSuggestionLine](docs/ReplenishmentSuggestionLine.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [ResolvedPriceResponse](docs/ResolvedPriceResponse.md)
 - [ReturnLogisticsQueueItem](docs/ReturnLogisticsQueueItem.md)
 - [ReturnLogisticsSummary](docs/ReturnLogisticsSummary.md)
 - [ReturnOrder](docs/ReturnOrder.md)
 - [ReturnOrderStatus](docs/ReturnOrderStatus.md)
 - [ReturnOrderStatusUpdate](docs/ReturnOrderStatusUpdate.md)
 - [ReturnWarehouseSummary](docs/ReturnWarehouseSummary.md)
 - [RevenueItem](docs/RevenueItem.md)
 - [Rfq](docs/Rfq.md)
 - [RfqCreate](docs/RfqCreate.md)
 - [RfqStatus](docs/RfqStatus.md)
 - [RfqStatusUpdate](docs/RfqStatusUpdate.md)
 - [RfqUpdate](docs/RfqUpdate.md)
 - [SalesVolumeItem](docs/SalesVolumeItem.md)
 - [SalesVolumeReport](docs/SalesVolumeReport.md)
 - [ScopeTotal](docs/ScopeTotal.md)
 - [Section](docs/Section.md)
 - [SendMessageDto](docs/SendMessageDto.md)
 - [SepaDirectDebitResponse](docs/SepaDirectDebitResponse.md)
 - [SepaSequenceType](docs/SepaSequenceType.md)
 - [ServiceAssignment](docs/ServiceAssignment.md)
 - [ServiceAssignmentCreate](docs/ServiceAssignmentCreate.md)
 - [ServiceAssignmentStatus](docs/ServiceAssignmentStatus.md)
 - [ServiceAssignmentUpdate](docs/ServiceAssignmentUpdate.md)
 - [ServiceJob](docs/ServiceJob.md)
 - [ServiceJobCreate](docs/ServiceJobCreate.md)
 - [ServiceJobStatus](docs/ServiceJobStatus.md)
 - [ServiceJobUpdate](docs/ServiceJobUpdate.md)
 - [Severity](docs/Severity.md)
 - [Shareholder](docs/Shareholder.md)
 - [ShareholderCreate](docs/ShareholderCreate.md)
 - [ShareholderUpdate](docs/ShareholderUpdate.md)
 - [Shipment](docs/Shipment.md)
 - [ShipmentStatusUpdate](docs/ShipmentStatusUpdate.md)
 - [ShippingCredentials](docs/ShippingCredentials.md)
 - [ShippingRate](docs/ShippingRate.md)
 - [ShippingRule](docs/ShippingRule.md)
 - [ShippingRuleCreate](docs/ShippingRuleCreate.md)
 - [ShippingRuleUpdate](docs/ShippingRuleUpdate.md)
 - [ShippingThreshold](docs/ShippingThreshold.md)
 - [ShippingThresholdCreate](docs/ShippingThresholdCreate.md)
 - [ShippingThresholdUpdate](docs/ShippingThresholdUpdate.md)
 - [SilentPartner](docs/SilentPartner.md)
 - [SilentPartnerCreate](docs/SilentPartnerCreate.md)
 - [SilentPartnerUpdate](docs/SilentPartnerUpdate.md)
 - [SmtpConfig](docs/SmtpConfig.md)
 - [SmtpEncryption](docs/SmtpEncryption.md)
 - [StilleExportResponse](docs/StilleExportResponse.md)
 - [StillePartnerZeile](docs/StillePartnerZeile.md)
 - [StilleReport](docs/StilleReport.md)
 - [StockAdjustment](docs/StockAdjustment.md)
 - [StockMovement](docs/StockMovement.md)
 - [StockTransfer](docs/StockTransfer.md)
 - [StockTransferStatus](docs/StockTransferStatus.md)
 - [StockTransferStatusUpdate](docs/StockTransferStatusUpdate.md)
 - [StockUpdateRequest](docs/StockUpdateRequest.md)
 - [SubmitResultDto](docs/SubmitResultDto.md)
 - [SubmitResultResponse](docs/SubmitResultResponse.md)
 - [SubscriptionOverview](docs/SubscriptionOverview.md)
 - [SuitabilityRequest](docs/SuitabilityRequest.md)
 - [SuitabilityResult](docs/SuitabilityResult.md)
 - [SupplierCondition](docs/SupplierCondition.md)
 - [SupplierConditionCreate](docs/SupplierConditionCreate.md)
 - [SupplierConditionUpdate](docs/SupplierConditionUpdate.md)
 - [SupplierInvoice](docs/SupplierInvoice.md)
 - [SupplierInvoiceCreate](docs/SupplierInvoiceCreate.md)
 - [SupplierInvoiceStatus](docs/SupplierInvoiceStatus.md)
 - [SupplierInvoiceStatusUpdate](docs/SupplierInvoiceStatusUpdate.md)
 - [SupplierInvoiceUpdate](docs/SupplierInvoiceUpdate.md)
 - [SupportChannel](docs/SupportChannel.md)
 - [SupportChannelType](docs/SupportChannelType.md)
 - [SupportTicket](docs/SupportTicket.md)
 - [SupportTicketStatus](docs/SupportTicketStatus.md)
 - [SupportTicketUpdate](docs/SupportTicketUpdate.md)
 - [SyncLog](docs/SyncLog.md)
 - [SyncLogStatus](docs/SyncLogStatus.md)
 - [SyncStatus](docs/SyncStatus.md)
 - [SyncSummary](docs/SyncSummary.md)
 - [SyncType](docs/SyncType.md)
 - [TargetProgress](docs/TargetProgress.md)
 - [TaxRateCreate](docs/TaxRateCreate.md)
 - [Team](docs/Team.md)
 - [TeamCreate](docs/TeamCreate.md)
 - [TenantSettings](docs/TenantSettings.md)
 - [TenantUser](docs/TenantUser.md)
 - [TicketMessage](docs/TicketMessage.md)
 - [TicketPriority](docs/TicketPriority.md)
 - [TimeEntryClockIn](docs/TimeEntryClockIn.md)
 - [TimeEntryClockOut](docs/TimeEntryClockOut.md)
 - [TimeEntryDto](docs/TimeEntryDto.md)
 - [TimelineEvent](docs/TimelineEvent.md)
 - [TotpEnableRequest](docs/TotpEnableRequest.md)
 - [TotpSetupResponse](docs/TotpSetupResponse.md)
 - [TrackOrderRequest](docs/TrackOrderRequest.md)
 - [TrackOrderResponse](docs/TrackOrderResponse.md)
 - [TrackedShipment](docs/TrackedShipment.md)
 - [TrackingEvent](docs/TrackingEvent.md)
 - [TrackingInfo](docs/TrackingInfo.md)
 - [TrainingAssignment](docs/TrainingAssignment.md)
 - [TrainingAssignmentCreate](docs/TrainingAssignmentCreate.md)
 - [TrainingAssignmentUpdate](docs/TrainingAssignmentUpdate.md)
 - [TrainingContent](docs/TrainingContent.md)
 - [TrainingSource](docs/TrainingSource.md)
 - [UmsatzsteuerReport](docs/UmsatzsteuerReport.md)
 - [UpdateAutomation](docs/UpdateAutomation.md)
 - [UpdateChannelDto](docs/UpdateChannelDto.md)
 - [UpdateConnectionRequest](docs/UpdateConnectionRequest.md)
 - [UpdatePermissionsPayload](docs/UpdatePermissionsPayload.md)
 - [UpdateProfileRequest](docs/UpdateProfileRequest.md)
 - [UpdateRolePayload](docs/UpdateRolePayload.md)
 - [UpdateSubscriptionRequest](docs/UpdateSubscriptionRequest.md)
 - [UpdateSyncDirectionRequest](docs/UpdateSyncDirectionRequest.md)
 - [UpdateTenantSettings](docs/UpdateTenantSettings.md)
 - [UpsCredentials](docs/UpsCredentials.md)
 - [UsageSnapshot](docs/UsageSnapshot.md)
 - [UserProfile](docs/UserProfile.md)
 - [UserTenantInfo](docs/UserTenantInfo.md)
 - [UstvaErgebnis](docs/UstvaErgebnis.md)
 - [VatDetail](docs/VatDetail.md)
 - [VatItem](docs/VatItem.md)
 - [VatSummary](docs/VatSummary.md)
 - [Verfahrensdokumentation](docs/Verfahrensdokumentation.md)
 - [VerifyEmailRequest](docs/VerifyEmailRequest.md)
 - [Voucher](docs/Voucher.md)
 - [VoucherCreate](docs/VoucherCreate.md)
 - [VoucherStatus](docs/VoucherStatus.md)
 - [VoucherType](docs/VoucherType.md)
 - [Warehouse](docs/Warehouse.md)
 - [WarehouseCreate](docs/WarehouseCreate.md)
 - [WarehouseStock](docs/WarehouseStock.md)
 - [WarehouseUpdate](docs/WarehouseUpdate.md)
 - [WebhookDirection](docs/WebhookDirection.md)
 - [WebhookEvent](docs/WebhookEvent.md)
 - [WebhookEventStatus](docs/WebhookEventStatus.md)
 - [WebhookSubscription](docs/WebhookSubscription.md)
 - [Workflow](docs/Workflow.md)
 - [WorkflowAction](docs/WorkflowAction.md)
 - [WorkflowEnabledUpdate](docs/WorkflowEnabledUpdate.md)
 - [XRechnungResponse](docs/XRechnungResponse.md)
 - [YearTotal](docs/YearTotal.md)
 - [YearlyPayrollSummary](docs/YearlyPayrollSummary.md)


## Documentation For Authorization


## bearer_token


- **Type**: HTTP Bearer Token authentication (JWT)

