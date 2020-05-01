.class public final Lo/TextLinksParams;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/TextLinksParams$StateListAnimator;
    }
.end annotation


# static fields
.field public static final c:Lo/TextLinksParams$StateListAnimator;

.field private static final e:Ljava/lang/String;


# instance fields
.field private final b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/TextLinksParams$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/TextLinksParams$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/TextLinksParams;->c:Lo/TextLinksParams$StateListAnimator;

    const-string v0, "eWrKTgiY0ui"

    .line 19
    sput-object v0, Lo/TextLinksParams;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TextLinksParams;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lo/TextLinksParams;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final b(Lo/alA;Lo/alB;Lo/alB;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Ljava/lang/String;",
            "Lo/akj;",
            ">;",
            "Lo/alB<",
            "Lo/akj;",
            ">;",
            "Lo/alB<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onSuccess"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTimeout"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lo/TextLinks;

    invoke-direct {v0, p1, p2, p3}, Lo/TextLinks;-><init>(Lo/alA;Lo/alB;Lo/alB;)V

    .line 30
    iget-object p1, p0, Lo/TextLinksParams;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 31
    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 32
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1, v0, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 35
    iget-object p1, p0, Lo/TextLinksParams;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/phone/SmsRetriever;->getClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->startSmsRetriever()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 38
    sget-object p2, Lo/TextLinksParams$TaskDescription;->d:Lo/TextLinksParams$TaskDescription;

    check-cast p2, Lcom/google/android/gms/tasks/OnSuccessListener;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 42
    sget-object p2, Lo/TextLinksParams$ActionBar;->b:Lo/TextLinksParams$ActionBar;

    check-cast p2, Lcom/google/android/gms/tasks/OnFailureListener;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "sms"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[0-9]{4,}"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, p1, v2, v3, v1}, Lkotlin/text/Regex;->a(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lo/anr;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/anr;->a()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final e(Lcom/netflix/android/moneyball/fields/Field;)Z
    .locals 6

    .line 24
    iget-object v0, p0, Lo/TextLinksParams;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lo/LayoutParams;->c(Landroid/content/pm/PackageInfo;)J

    move-result-wide v2

    if-eqz p1, :cond_0

    .line 25
    sget-object p1, Lo/hj;->a:Lo/hj$ActionBar;

    invoke-virtual {p1}, Lo/hj$ActionBar;->d()I

    move-result p1

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
