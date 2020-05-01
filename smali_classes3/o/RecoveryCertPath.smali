.class public final Lo/RecoveryCertPath;
.super Lo/SyncConstValue;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RecoveryCertPath$Application;
    }
.end annotation


# static fields
.field private static final d:Lo/TextInputTimePickerView;

.field public static final e:Lo/RecoveryCertPath$Application;


# instance fields
.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo/RecoveryCertPath$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/RecoveryCertPath$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/RecoveryCertPath;->e:Lo/RecoveryCertPath$Application;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "memberReferral"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "detail"

    aput-object v2, v0, v1

    .line 16
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "PQLHelper.create(\"memberReferral\", \"detail\")"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lo/RecoveryCertPath;->d:Lo/TextInputTimePickerView;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lo/RecoveryCertPath;-><init>(ZILo/amc;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const-string v0, "FetchMemberReferralTask"

    .line 13
    invoke-direct {p0, v0}, Lo/SyncConstValue;-><init>(Ljava/lang/String;)V

    iput-boolean p1, p0, Lo/RecoveryCertPath;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILo/amc;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lo/RecoveryCertPath;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pqls"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lo/RecoveryCertPath;->d:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lo/ConfirmationAlreadyPresentingException;Lo/ci;Lo/TextClock;)V
    .locals 1

    const-string p3, "cmpTask"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object p1, p1, Lo/ConfirmationAlreadyPresentingException;->a:Lo/FontRequest;

    sget-object p3, Lo/RecoveryCertPath;->d:Lo/TextInputTimePickerView;

    invoke-virtual {p1, p3}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object p1

    instance-of p3, p1, Lo/agn;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lo/agn;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lo/agn;->d()Lo/agn$ActionBar;

    move-result-object v0

    :cond_1
    if-eqz p2, :cond_2

    .line 32
    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;

    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p2, v0, p1}, Lo/ci;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_2
    return-void
.end method

.method public d()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lo/RecoveryCertPath;->c:Z

    return v0
.end method

.method public e(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 36
    invoke-interface {p1, v0, p2}, Lo/ci;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method
