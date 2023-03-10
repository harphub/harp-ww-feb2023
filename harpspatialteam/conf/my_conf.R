# Default harpSpatial configuration
###################################

# General settings for forecast
lead_time        <- seq(0, 48)
lt_unit          <- "h"
by               <- "12h"
members          <- NULL

# Forecast file settings
fc_file_path     <- here::here("..", "data", "meps")
fc_file_template <- "meps_det_2_5km_{YYYY}{MM}{DD}T{HH}Z.nc"
fc_file_format   <- NULL

fc_options       <- harpIO::netcdf_opts(
  ref_time_var = NA,
  z_var        = "height0",
  param_find   = list(
    AccPcp1h  = "precipitation_amount_acc",
    AccPcp3h  = "precipitation_amount_acc",
    AccPcp6h  = "precipitation_amount_acc",
    AccPcp12h = "precipitation_amount_acc",
    AccPcp24h = "precipitation_amount_acc"
  )
)

# Forecast regridding and info
fc_domain        <- NULL
fc_interp_method <- "closest"
fc_accumulation  <- NULL

#######################################################################

# Observation file settings
ob_file_path     <- here::here("..", "data", "met_analysis")
ob_file_template <- "met_analysis_1_0km_nordic_{YYYY}{MM}{DD}T{HH}Z.nc"
ob_file_format   <- NULL
ob_options       <- harpIO::netcdf_opts(
  proj4_var = "projection_lcc",
  lon_var   = NULL,
  lat_var   = NULL,
  param_find = list(
    AccPcp1h  = "precipitation_amount",
    AccPcp3h  = "precipitation_amount",
    AccPcp6h  = "precipitation_amount",
    AccPcp12h = "precipitation_amount",
    AccPcp24h = "precipitation_amount"
  )
)

# Observation regridding and info
ob_domain        <- NULL
ob_interp_method <- "closest"
ob_accumulation  <- "1h"

########################################################################

# Verification domain
verif_domain <- readRDS(here::here("conf", "my_domain.rds"))
use_mask     <- FALSE

#######################################################################

# SCORE DETAILS: thresholds etc.
# NOTE: the window_sizes must be n >= 0.
#  The actual boxes have size 2*n+1
window_sizes <- c(0, 1, 2, 4, 8, 12, 20)
thresholds   <- c(0.1, 1, 5, 10)

# OUTPUT
sqlite_path <- NULL
sqlite_file <- NULL

# SCORE OPTIONS
# TODO: plot options as well?
sal_options <- list(
  thresh_scale   = 15.,
  min_rain       = 0.1,
  same_threshold = FALSE,
  maxobj         = 1000
)


