.class public Lcom/netflix/mediaclient/service/voip/VoipErrorDescriptor;
.super Ljava/lang/Object;
.source "VoipErrorDescriptor.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/error/ErrorDescriptor;


# instance fields
.field private mData:Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

.field private mPriority:I


# direct methods
.method constructor <init>(ILcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netflix/mediaclient/service/voip/VoipErrorDescriptor;->mPriority:I

    iput-object p2, p0, Lcom/netflix/mediaclient/service/voip/VoipErrorDescriptor;->mData:Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/voip/VoipErrorDescriptor;-><init>(ILcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

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

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipErrorDescriptor;->mData:Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/voip/VoipErrorDescriptor;->mPriority:I

    return v0
.end method

.method public shouldReportToUserAsDialog(Landroid/app/Activity;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
