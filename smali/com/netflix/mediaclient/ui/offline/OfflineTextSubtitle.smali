.class public Lcom/netflix/mediaclient/ui/offline/OfflineTextSubtitle;
.super Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;
.source "OfflineTextSubtitle.java"


# static fields
.field public static final IMPL_VALUE:I = 0x3


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/SubtitleUrl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;-><init>(Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/SubtitleUrl;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method protected getImplementation()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
