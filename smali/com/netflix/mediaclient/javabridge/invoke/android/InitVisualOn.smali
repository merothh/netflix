.class public final Lcom/netflix/mediaclient/javabridge/invoke/android/InitVisualOn;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "InitVisualOn.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "initVisualOn"

.field private static final TARGET:Ljava/lang/String; = "android"


# instance fields
.field private ctxt:J

.field private ptr:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 3

    .prologue
    .line 35
    const-string/jumbo v0, "android"

    const-string/jumbo v1, "initVisualOn"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-wide p1, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/InitVisualOn;->ptr:J

    .line 37
    iput-wide p3, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/InitVisualOn;->ctxt:J

    .line 38
    return-void
.end method


# virtual methods
.method public getCtxt()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/InitVisualOn;->ctxt:J

    return-wide v0
.end method

.method public getPtr()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/InitVisualOn;->ptr:J

    return-wide v0
.end method
