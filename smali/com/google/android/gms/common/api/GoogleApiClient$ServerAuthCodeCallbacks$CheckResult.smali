.class public Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;
.super Ljava/lang/Object;


# instance fields
.field private zzTm:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private zzaaV:Z


# virtual methods
.method public zznD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;->zzaaV:Z

    return v0
.end method

.method public zznE()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;->zzTm:Ljava/util/Set;

    return-object v0
.end method
