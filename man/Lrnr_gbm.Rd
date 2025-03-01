% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Lrnr_gbm.R
\docType{class}
\name{Lrnr_gbm}
\alias{Lrnr_gbm}
\title{GBM: Generalized Boosted Regression Models}
\format{
An \code{\link[R6]{R6Class}} object inheriting from
\code{\link{Lrnr_base}}.
}
\value{
A learner object inheriting from \code{\link{Lrnr_base}} with
methods for training and prediction. For a full list of learner
functionality, see the complete documentation of \code{\link{Lrnr_base}}.
}
\description{
This learner provides fitting procedures for generalized boosted regression
trees, using the routines from \pkg{gbm}, through a call to the function
\code{\link[gbm]{gbm.fit}}. Though a variety of gradient boosting strategies
have seen popularity in machine learning, a few of the early methodological
descriptions were given by \insertCite{friedman-gbm1;textual}{sl3} and
\insertCite{friedman-gbm2;textual}{sl3}.
}
\section{Parameters}{

\itemize{
\item \code{n.trees}: An integer specifying the total number of trees to fit.
This is equivalent to the number of iterations and the number of basis
functions in the additive expansion. The default is 10000.
\item \code{interaction.depth}: An integer specifying the maximum depth of
each tree (i.e., the highest level of allowed variable interactions).
A value of 1 implies an additive model, while a value of 2 implies a
model with up to 2-way interactions, etc. The default is 2.
\item \code{shrinkage}: A shrinkage parameter applied to each tree in the
expansion. Also known as the learning rate or step-size reduction;
values of 0.001 to 0.1 have been found to usually work, but a smaller
learning rate typically requires more trees. The default is 0.001.
\item \code{...}: Other parameters passed to \code{\link[gbm]{gbm}}. See its
documentation for details.
}
}

\examples{
data(cpp_imputed)
# create task for prediction
cpp_task <- sl3_Task$new(
  data = cpp_imputed,
  covariates = c("apgar1", "apgar5", "parity", "gagebrth", "mage", "sexn"),
  outcome = "haz"
)

# initialization, training, and prediction with the defaults
gbm_lrnr <- Lrnr_gbm$new()
gbm_fit <- gbm_lrnr$train(cpp_task)
gbm_preds <- gbm_fit$predict()
}
\references{
\insertAllCited{}
}
\seealso{
\link{Lrnr_xgboost} for the extreme gradient boosted tree models from
the Xgboost framework (via the \pkg{xgboost} package) and \link{Lrnr_lightgbm}
for the faster and more efficient gradient boosted trees from the LightGBM
framework (via the \pkg{lightgbm} package).

Other Learners: 
\code{\link{Custom_chain}},
\code{\link{Lrnr_HarmonicReg}},
\code{\link{Lrnr_arima}},
\code{\link{Lrnr_bartMachine}},
\code{\link{Lrnr_base}},
\code{\link{Lrnr_bayesglm}},
\code{\link{Lrnr_bilstm}},
\code{\link{Lrnr_caret}},
\code{\link{Lrnr_cv_selector}},
\code{\link{Lrnr_cv}},
\code{\link{Lrnr_dbarts}},
\code{\link{Lrnr_define_interactions}},
\code{\link{Lrnr_density_discretize}},
\code{\link{Lrnr_density_hse}},
\code{\link{Lrnr_density_semiparametric}},
\code{\link{Lrnr_earth}},
\code{\link{Lrnr_expSmooth}},
\code{\link{Lrnr_gam}},
\code{\link{Lrnr_ga}},
\code{\link{Lrnr_glm_fast}},
\code{\link{Lrnr_glm_semiparametric}},
\code{\link{Lrnr_glmnet}},
\code{\link{Lrnr_glmtree}},
\code{\link{Lrnr_glm}},
\code{\link{Lrnr_grfcate}},
\code{\link{Lrnr_grf}},
\code{\link{Lrnr_gru_keras}},
\code{\link{Lrnr_gts}},
\code{\link{Lrnr_h2o_grid}},
\code{\link{Lrnr_hal9001}},
\code{\link{Lrnr_haldensify}},
\code{\link{Lrnr_hts}},
\code{\link{Lrnr_independent_binomial}},
\code{\link{Lrnr_lightgbm}},
\code{\link{Lrnr_lstm_keras}},
\code{\link{Lrnr_mean}},
\code{\link{Lrnr_multiple_ts}},
\code{\link{Lrnr_multivariate}},
\code{\link{Lrnr_nnet}},
\code{\link{Lrnr_nnls}},
\code{\link{Lrnr_optim}},
\code{\link{Lrnr_pca}},
\code{\link{Lrnr_pkg_SuperLearner}},
\code{\link{Lrnr_polspline}},
\code{\link{Lrnr_pooled_hazards}},
\code{\link{Lrnr_randomForest}},
\code{\link{Lrnr_ranger}},
\code{\link{Lrnr_revere_task}},
\code{\link{Lrnr_rpart}},
\code{\link{Lrnr_rugarch}},
\code{\link{Lrnr_screener_augment}},
\code{\link{Lrnr_screener_coefs}},
\code{\link{Lrnr_screener_correlation}},
\code{\link{Lrnr_screener_importance}},
\code{\link{Lrnr_sl}},
\code{\link{Lrnr_solnp_density}},
\code{\link{Lrnr_solnp}},
\code{\link{Lrnr_stratified}},
\code{\link{Lrnr_subset_covariates}},
\code{\link{Lrnr_svm}},
\code{\link{Lrnr_tsDyn}},
\code{\link{Lrnr_ts_weights}},
\code{\link{Lrnr_xgboost}},
\code{\link{Pipeline}},
\code{\link{Stack}},
\code{\link{define_h2o_X}()},
\code{\link{undocumented_learner}}
}
\concept{Learners}
\keyword{data}
