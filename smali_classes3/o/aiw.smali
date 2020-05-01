.class public Lo/aiw;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lo/aiE$TaskDescription;

.field private final c:Ljava/util/List;

.field private final d:Lcom/netflix/partner/PSearchDataHandler;

.field private final e:Lo/aip;


# direct methods
.method public constructor <init>(Lcom/netflix/partner/PSearchDataHandler;Ljava/lang/String;Ljava/util/List;Lo/aip;Lo/aiE$TaskDescription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aiw;->d:Lcom/netflix/partner/PSearchDataHandler;

    iput-object p2, p0, Lo/aiw;->a:Ljava/lang/String;

    iput-object p3, p0, Lo/aiw;->c:Ljava/util/List;

    iput-object p4, p0, Lo/aiw;->e:Lo/aip;

    iput-object p5, p0, Lo/aiw;->b:Lo/aiE$TaskDescription;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lo/aiw;->d:Lcom/netflix/partner/PSearchDataHandler;

    iget-object v1, p0, Lo/aiw;->a:Ljava/lang/String;

    iget-object v2, p0, Lo/aiw;->c:Ljava/util/List;

    iget-object v3, p0, Lo/aiw;->e:Lo/aip;

    iget-object v4, p0, Lo/aiw;->b:Lo/aiE$TaskDescription;

    move-object v5, p1

    check-cast v5, Ljava/lang/Throwable;

    invoke-static/range {v0 .. v5}, Lcom/netflix/partner/PSearchDataHandler;->c(Lcom/netflix/partner/PSearchDataHandler;Ljava/lang/String;Ljava/util/List;Lo/aip;Lo/aiE$TaskDescription;Ljava/lang/Throwable;)V

    return-void
.end method
