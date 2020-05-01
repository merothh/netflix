.class public Lcom/netflix/mediaclient/service/user/BlacklistedWidevinePluginErrorDescriptor;
.super Ljava/lang/Object;
.source "BlacklistedWidevinePluginErrorDescriptor.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/error/ErrorDescriptor;


# static fields
.field private static final BLACKLISTED_WIDEVINE_PLUGIN:I = 0x3a9b

.field protected static final TAG:Ljava/lang/String; = "nf_user_error"


# instance fields
.field private mMetadata:Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "nf_user_error"

    const-string/jumbo v1, "actionID 1 15003, Widevine blacklisted..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f08009f

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x3a9b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/user/BlacklistedWidevinePluginErrorDescriptor$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/user/BlacklistedWidevinePluginErrorDescriptor$1;-><init>(Lcom/netflix/mediaclient/service/user/BlacklistedWidevinePluginErrorDescriptor;Landroid/content/Context;)V

    new-instance v2, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4, v1}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/user/BlacklistedWidevinePluginErrorDescriptor;->mMetadata:Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    return-void
.end method

.method static canHandle(Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->getActionID()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->getCode()I

    move-result v1

    const/16 v2, 0x3a9b

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBackgroundTask()Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/BlacklistedWidevinePluginErrorDescriptor;->mMetadata:Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public shouldReportToUserAsDialog(Landroid/app/Activity;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
