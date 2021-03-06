% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/account.R
\name{etrd_account_balance}
\alias{etrd_account_balance}
\title{ETrade Account Balances}
\usage{
etrd_account_balance(
  account,
  realTimeNAV = "false",
  output = c("df", "list"),
  access_tokens = NULL,
  etrade_cred = NULL,
  sandbox = FALSE
)
}
\arguments{
\item{account}{The account ID key, not the account ID associated with the
specific account. Use \code{\link{etrd_account_list}} to identify the
proper account id key.}

\item{realTimeNAV}{Default is false. If true, fetches real time balance}

\item{output}{Indicate whether the output should be in the form of a data
frame ('df') or list ('list'). Data frame is returned by default.}

\item{access_tokens}{Access tokens are created using
\code{\link{etrd_auth_access_token}}. This entry is not required because
the output is saved and retrieved from R options automatically.}

\item{etrade_cred}{The output created from
\code{\link{etrd_auth_credentials}} when a valid ETRADE key and secret have
been passed. This entry is not required because the output is saved and
retrieved from R options automatically.}

\item{sandbox}{ETRADE offers a sandbox environment for validating API calls
and responses. If using the sandbox environment, this must be set to TRUE
in each function called throughout etrader. ETRADE states "Sandbox
responses use stored data that's intended to provide typical responses for
basic use cases. So the responses you receive will not contain current
data, and may not exactly match your requests in other ways." Essentially,
the responses will not match the requests entered but successful pull will
indicate whether the entry was valid or not.}
}
\value{
df or list of account balance information
}
\description{
This API returns detailed balance information for a specified account for the
current user. The information returned includes account type, option level,
and details on up to four balances - account balance, margin account balance,
day trade balance, and cash account balance.
}
\examples{
\dontrun{

account_id = etrd_account_list()$accountIdKey[1]
etrd_account_balance(account_id)

}
}
