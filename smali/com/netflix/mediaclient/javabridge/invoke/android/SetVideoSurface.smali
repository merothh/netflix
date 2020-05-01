.class public final Lcom/netflix/mediaclient/javabridge/invoke/android/SetVideoSurface;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "SetVideoSurface.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "setVideoSurface"

.field private static final TARGET:Ljava/lang/String; = "android"


# instance fields
.field private surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 2

    const-string/jumbo v0, "android"

    const-string/jumbo v1, "setVideoSurface"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Surface can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/SetVideoSurface;->surface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/SetVideoSurface;->surface:Landroid/view/Surface;

    return-object v0
.end method
