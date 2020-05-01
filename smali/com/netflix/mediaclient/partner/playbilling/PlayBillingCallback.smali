.class public abstract Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;
.super Ljava/lang/Object;
.source "PlayBillingCallback.java"


# instance fields
.field private final callback:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;->callback:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public getCallback()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;->callback:Ljava/lang/String;

    return-object v0
.end method

.method public abstract onResult(Lorg/json/JSONObject;)V
.end method
