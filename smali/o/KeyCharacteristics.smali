.class public final Lo/KeyCharacteristics;
.super Lo/SyncConstValue;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/KeyCharacteristics$TaskDescription;
    }
.end annotation


# static fields
.field public static final a:Lo/KeyCharacteristics$TaskDescription;

# The value of this static final field might be set in the static constructor
.field private static final d:Ljava/lang/String; = "FetchDownloadedForYou"

# The value of this static final field might be set in the static constructor
.field private static final g:I = 0x32


# instance fields
.field private final b:Lo/TextInputTimePickerView;

.field private final c:Ljava/lang/String;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/KeyCharacteristics$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/KeyCharacteristics$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/KeyCharacteristics;->a:Lo/KeyCharacteristics$TaskDescription;

    const-string v0, "FetchDownloadedForYou"

    .line 16
    sput-object v0, Lo/KeyCharacteristics;->d:Ljava/lang/String;

    const/16 v0, 0x32

    .line 17
    sput v0, Lo/KeyCharacteristics;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "profileGuid"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lo/KeyCharacteristics;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/SyncConstValue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/KeyCharacteristics;->c:Ljava/lang/String;

    iput p2, p0, Lo/KeyCharacteristics;->e:I

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "downloadedForYouList"

    aput-object v0, p1, p2

    .line 23
    iget-object p2, p0, Lo/KeyCharacteristics;->c:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p2, p1, v0

    .line 24
    iget p2, p0, Lo/KeyCharacteristics;->e:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, p1, v0

    .line 21
    invoke-static {p1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string p2, "PQLHelper.create(\n      \u2026range(size - 1)\n        )"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/KeyCharacteristics;->b:Lo/TextInputTimePickerView;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILo/amc;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 13
    sget p2, Lo/KeyCharacteristics;->g:I

    :cond_0
    invoke-direct {p0, p1, p2}, Lo/KeyCharacteristics;-><init>(Ljava/lang/String;I)V

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

    .line 28
    iget-object v0, p0, Lo/KeyCharacteristics;->b:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lo/ConfirmationAlreadyPresentingException;Lo/ci;Lo/TextClock;)V
    .locals 2

    const-string v0, "cmpTask"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackOnMain"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object p1, p1, Lo/ConfirmationAlreadyPresentingException;->a:Lo/FontRequest;

    iget-object p3, p0, Lo/KeyCharacteristics;->b:Lo/TextInputTimePickerView;

    invoke-virtual {p1, p3}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object p1

    const-string p3, "cmpTask.modelProxy.getIt\u2026loadedForYouDetails>(pql)"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 50
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/Collection;

    .line 57
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl;

    if-eqz v1, :cond_0

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_1
    check-cast p3, Ljava/util/List;

    .line 38
    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p2, p3, p1}, Lo/ci;->s(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public e(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 42
    invoke-interface {p1, v0, p2}, Lo/ci;->s(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lo/KeyCharacteristics;->c:Ljava/lang/String;

    return-object v0
.end method
