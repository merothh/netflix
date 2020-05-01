.class public Lcom/google/android/play/core/appupdate/AppUpdateManagerFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/AppUpdateManager;
    .locals 2

    new-instance v0, Lcom/google/android/play/core/appupdate/d;

    new-instance v1, Lcom/google/android/play/core/appupdate/k;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/appupdate/k;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, p0}, Lcom/google/android/play/core/appupdate/d;-><init>(Lcom/google/android/play/core/appupdate/k;Landroid/content/Context;)V

    return-object v0
.end method
