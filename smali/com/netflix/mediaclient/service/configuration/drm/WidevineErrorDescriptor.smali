.class public Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;
.super Ljava/lang/Object;
.source "WidevineErrorDescriptor.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/error/ErrorDescriptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "ErrorAgent"


# instance fields
.field private mCause:Ljava/lang/Throwable;

.field private mContext:Landroid/content/Context;

.field private mData:Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

.field private mLink:Ljava/lang/String;

.field private mMessageId:I

.field private mOkTask:Ljava/lang/Runnable;

.field private mPriority:I

.field private mStatusCode:Lcom/netflix/mediaclient/StatusCode;

.field private mTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Runnable;I)V
    .locals 9

    const/4 v3, 0x0

    const v4, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v3

    move v6, p4

    move-object v7, v3

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;ILjava/lang/Runnable;ILjava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;ILjava/lang/Runnable;ILjava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mPriority:I

    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mCause:Ljava/lang/Throwable;

    iput p4, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mPriority:I

    iput-object p5, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mTask:Ljava/lang/Runnable;

    iput p6, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mMessageId:I

    iput-object p7, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mLink:Ljava/lang/String;

    iput-object p8, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mOkTask:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->createData()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createData()V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    if-nez v0, :cond_2

    const-string/jumbo v0, "ErrorAgent"

    const-string/jumbo v1, "Required to display error dialog without status code!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mMessageId:I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->getMessage(ILcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mLink:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mOkTask:Ljava/lang/Runnable;

    if-nez v4, :cond_1

    new-instance v4, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor$1;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor$1;-><init>(Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;)V

    :cond_1
    if-eqz v0, :cond_3

    new-instance v6, Lcom/netflix/mediaclient/util/LaunchBrowser;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1, v0}, Lcom/netflix/mediaclient/util/LaunchBrowser;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mContext:Landroid/content/Context;

    const v7, 0x7f080165

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mData:Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ErrorAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required to display error dialog with status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mData:Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    goto :goto_1
.end method

.method private getMessage(ILcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;
    .locals 5

    const v4, 0x7f080178

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getBackgroundTask()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mData:Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineErrorDescriptor;->mPriority:I

    return v0
.end method

.method public shouldReportToUserAsDialog(Landroid/app/Activity;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
