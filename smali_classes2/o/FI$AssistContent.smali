.class final Lo/FI$AssistContent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FI;->b(Lo/Am;Ljava/lang/String;JII)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lo/Am;

.field final synthetic e:Lo/FI;

.field final synthetic f:J


# direct methods
.method constructor <init>(Lo/FI;Lo/Am;Ljava/lang/String;IIJ)V
    .locals 0

    iput-object p1, p0, Lo/FI$AssistContent;->e:Lo/FI;

    iput-object p2, p0, Lo/FI$AssistContent;->d:Lo/Am;

    iput-object p3, p0, Lo/FI$AssistContent;->c:Ljava/lang/String;

    iput p4, p0, Lo/FI$AssistContent;->b:I

    iput p5, p0, Lo/FI$AssistContent;->a:I

    iput-wide p6, p0, Lo/FI$AssistContent;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lo/FI$AssistContent;->d:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v1

    iget-object v2, p0, Lo/FI$AssistContent;->c:Ljava/lang/String;

    .line 151
    sget-object v3, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    .line 152
    iget v0, p0, Lo/FI$AssistContent;->b:I

    .line 153
    iget v11, p0, Lo/FI$AssistContent;->a:I

    .line 154
    new-instance v12, Lo/FI$TaskDescription;

    iget-object v5, p0, Lo/FI$AssistContent;->e:Lo/FI;

    iget-wide v7, p0, Lo/FI$AssistContent;->f:J

    move-object v4, v12

    move-object v6, p1

    move v9, v0

    move v10, v11

    invoke-direct/range {v4 .. v10}, Lo/FI$TaskDescription;-><init>(Lo/FI;Lio/reactivex/ObservableEmitter;JII)V

    move-object v6, v12

    check-cast v6, Lo/zU;

    move v4, v0

    move v5, v11

    .line 150
    invoke-interface/range {v1 .. v6}, Lo/zG;->b(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IILo/zU;)Z

    return-void
.end method
