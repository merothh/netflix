.class public abstract Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClient;
.super Ljava/lang/Object;
.source "VolleyWebClient.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/webclient/WebClient;


# static fields
.field protected static sRequestQueue:Lcom/android/volley/RequestQueue;


# instance fields
.field protected mErrorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

.field protected mTimeoutInMs:I

.field protected mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createRetryPolicy()Lcom/android/volley/RetryPolicy;
    .locals 4

    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClient;->mTimeoutInMs:I

    if-gtz v0, :cond_0

    const/16 v0, 0x9c4

    :goto_0
    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    return-object v1

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClient;->mTimeoutInMs:I

    goto :goto_0
.end method

.method public final isSynchronous()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClient;->mTimeoutInMs:I

    return-void
.end method
