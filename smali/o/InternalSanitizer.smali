.class public final Lo/InternalSanitizer;
.super Lo/VoicemailContract;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/InternalSanitizer$TaskDescription;
    }
.end annotation


# static fields
.field public static final e:Lo/InternalSanitizer$TaskDescription;


# instance fields
.field private final d:Lo/TextInputTimePickerView;

.field private final i:Lo/TextInputTimePickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/InternalSanitizer$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/InternalSanitizer$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/InternalSanitizer;->e:Lo/InternalSanitizer$TaskDescription;

    return-void
.end method

.method public varargs constructor <init>(Lo/FontRequest;Lo/ci;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Lo/ci;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "netflixModelProxy"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventGuids"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MarkNotificationAsRead"

    .line 22
    invoke-direct {p0, v0, p1, p2}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    const/4 p1, 0x3

    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "notifications"

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 30
    invoke-static {p3}, Lo/ako;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, p2, v3

    const/4 v2, 0x2

    const-string v4, "markAsRead"

    aput-object v4, p2, v2

    .line 28
    invoke-static {p2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p2

    const-string v4, "PQLHelper.create(\n      \u2026       \"markAsRead\"\n    )"

    invoke-static {p2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/InternalSanitizer;->d:Lo/TextInputTimePickerView;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v1

    .line 36
    invoke-static {p3}, Lo/ako;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "summary"

    aput-object p2, p1, v2

    .line 34
    invoke-static {p1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string p2, "PQLHelper.create(\n      \u2026,\n        \"summary\"\n    )"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/InternalSanitizer;->i:Lo/TextInputTimePickerView;

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected b(Ljava/util/List;)V
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

    .line 41
    iget-object v0, p0, Lo/InternalSanitizer;->d:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 55
    invoke-interface {p1, v0, p2}, Lo/ci;->k(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 2

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lo/InternalSanitizer;->a:Lo/FontRequest;

    iget-object v0, p0, Lo/InternalSanitizer;->i:Lo/TextInputTimePickerView;

    invoke-virtual {p2, v0}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object p2

    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    if-eqz p2, :cond_2

    .line 50
    check-cast p2, Ljava/lang/Iterable;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 60
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 61
    check-cast v1, Lo/agm;

    .line 50
    iget-object v1, v1, Lo/agm;->e:Lcom/netflix/model/leafs/social/UserNotificationSummary;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 50
    sget-object p2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p2, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p1, v0, p2}, Lo/ci;->k(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_2
    return-void
.end method
