.class public final Lo/ES;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ES$StateListAnimator;
    }
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final a:I = 0xa

.field public static final c:Lo/ES$StateListAnimator;


# instance fields
.field private final e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ES$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ES$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/ES;->c:Lo/ES$StateListAnimator;

    const/16 v0, 0xa

    .line 18
    sput v0, Lo/ES;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ES;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method

.method public static final synthetic b()I
    .locals 1

    .line 13
    sget v0, Lo/ES;->a:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/ER;",
            ">;"
        }
    .end annotation

    const-string v0, "selectedTitleId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lo/ES$TaskDescription;

    invoke-direct {v0, p0, p1}, Lo/ES$TaskDescription;-><init>(Lo/ES;Ljava/lang/String;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.create {\n    \u2026)\n            }\n        }"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(Lo/Ba;I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Ba;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lo/EQ;",
            ">;"
        }
    .end annotation

    const-string v0, "season"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lo/ES$Application;

    invoke-direct {v0, p0, p1, p2}, Lo/ES$Application;-><init>(Lo/ES;Lo/Ba;I)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create {\n    \u2026)\n            }\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/ES;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method
