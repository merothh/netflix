.class public final Lcom/netflix/falkor/task/MutateRemindMeQueueTask;
.super Lo/SyncConstValue;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;,
        Lcom/netflix/falkor/task/MutateRemindMeQueueTask$TaskDescription;
    }
.end annotation


# static fields
.field public static final a:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$TaskDescription;


# instance fields
.field private final b:Lo/TextInputTimePickerView;

.field private final c:I

.field private final d:Lo/TextInputTimePickerView;

.field private final e:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask;->a:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$TaskDescription;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;Ljava/lang/String;I)V
    .locals 5

    const-string v0, "mutation"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MutateRemindMeQueue"

    .line 27
    invoke-direct {p0, v0}, Lo/SyncConstValue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask;->e:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    iput p3, p0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask;->c:I

    const/4 p1, 0x3

    new-array p3, p1, [Ljava/lang/Object;

    const-string v0, "videos"

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const/4 v2, 0x1

    aput-object p2, p3, v2

    .line 32
    iget-object v3, p0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask;->e:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    invoke-virtual {v3}, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, p3, v4

    .line 29
    invoke-static {p3}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p3

    const-string v3, "PQLHelper.create(\n      \u2026 mutation.pqlString\n    )"

    invoke-static {p3, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask;->b:Lo/TextInputTimePickerView;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v1

    aput-object p2, p1, v2

    const-string p2, "inRemindMeQueue"

    aput-object p2, p1, v4

    .line 34
    invoke-static {p1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string p2, "PQLHelper.create(\n      \u2026  \"inRemindMeQueue\"\n    )"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask;->d:Lo/TextInputTimePickerView;

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

    .line 48
    iget-object v0, p0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask;->b:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lo/ConfirmationAlreadyPresentingException;Lo/ci;Lo/TextClock;)V
    .locals 0

    const-string p3, "cmpTask"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object p3, Lcom/netflix/falkor/task/MutateRemindMeQueueTask;->a:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$TaskDescription;

    check-cast p3, Lo/MessagePdu;

    .line 61
    iget-object p1, p1, Lo/ConfirmationAlreadyPresentingException;->a:Lo/FontRequest;

    iget-object p3, p0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask;->d:Lo/TextInputTimePickerView;

    invoke-virtual {p1, p3}, Lo/FontRequest;->c(Lo/TextInputTimePickerView;)Lo/agj;

    move-result-object p1

    instance-of p3, p1, Lo/agp;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lo/agp;

    if-nez p1, :cond_1

    .line 63
    sget-object p1, Lcom/netflix/falkor/task/MutateRemindMeQueueTask;->a:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$TaskDescription;

    check-cast p1, Lo/MessagePdu;

    if-eqz p2, :cond_2

    .line 64
    iget-object p1, p0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask;->e:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    invoke-virtual {p1}, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;->c()Z

    move-result p1

    sget-object p3, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p3, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p2, p1, p3}, Lo/ci;->e(ZLcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 66
    invoke-virtual {p1}, Lo/agp;->bH()Z

    move-result p1

    sget-object p3, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p3, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p2, p1, p3}, Lo/ci;->e(ZLcom/netflix/mediaclient/android/app/Status;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask;->a:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 72
    iget-object v0, p0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask;->e:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    invoke-virtual {v0}, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;->c()Z

    move-result v0

    invoke-interface {p1, v0, p2}, Lo/ci;->e(ZLcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public i()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lo/adt$Activity;

    .line 52
    new-instance v1, Lo/adt$Activity;

    iget v2, p0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "trackId"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/akz;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
