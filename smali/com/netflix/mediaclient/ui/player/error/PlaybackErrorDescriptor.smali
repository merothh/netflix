.class abstract Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;
.super Ljava/lang/Object;
.source "PlaybackErrorDescriptor.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/error/ErrorDescriptor;


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_play_error"

.field protected static final kbHelpUrl:Ljava/lang/String; = "https://help.netflix.com/en/node/14384"

.field protected static final kbProxyUrl:Ljava/lang/String; = "https://netflix.com/proxy"


# instance fields
.field private mData:Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

.field private mPriority:I


# direct methods
.method constructor <init>(ILcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;->mPriority:I

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;->mData:Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;-><init>(ILcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    return-void
.end method


# virtual methods
.method public getBackgroundTask()Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;->mData:Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;->mPriority:I

    return v0
.end method

.method public shouldReportToUserAsDialog(Landroid/app/Activity;)Z
    .locals 1

    instance-of v0, p1, Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    return v0
.end method
