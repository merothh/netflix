.class public Lcom/netflix/mediaclient/javabridge/invoke/media/GetBufferRange;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "GetBufferRange.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "getBufferRange"

.field private static final TARGET:Ljava/lang/String; = "media"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "getBufferRange"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method