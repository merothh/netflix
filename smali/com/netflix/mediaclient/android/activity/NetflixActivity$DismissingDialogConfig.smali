.class public final enum Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DismissingDialogConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

.field public static final enum b:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

.field private static final synthetic c:[Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

.field public static final enum d:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 3779
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    const/4 v1, 0x0

    const-string v2, "dismissOnStop"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    .line 3780
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    const/4 v2, 0x1

    const-string v3, "doNotDismissOnStop"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    .line 3781
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    const/4 v3, 0x2

    const-string v4, "doNotDismissOnStopOnce"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    .line 3778
    sget-object v4, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->c:[Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3778
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;
    .locals 1

    .line 3778
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;
    .locals 1

    .line 3778
    sget-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->c:[Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    return-object v0
.end method
