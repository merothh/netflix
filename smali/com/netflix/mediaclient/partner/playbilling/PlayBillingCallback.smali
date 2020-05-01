.class public abstract Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;
.super Ljava/lang/Object;
.source "PlayBillingCallback.java"


# instance fields
.field private final callback:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;->callback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;->callback:Ljava/lang/String;

    return-object v0
.end method

.method public abstract onResult(Lorg/json/JSONObject;)V
.end method
