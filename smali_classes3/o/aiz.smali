.class public Lo/aiz;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Lcom/netflix/partner/PSearchDataHandler;

.field private final b:I

.field private final c:Ljava/util/List;

.field private final d:Lo/aiK;

.field private final e:Ljava/lang/String;

.field private final i:Lo/aiE$TaskDescription;

.field private final j:Lo/aip;


# direct methods
.method public constructor <init>(Lcom/netflix/partner/PSearchDataHandler;Ljava/util/List;Ljava/lang/String;Lo/aiK;ILo/aip;Lo/aiE$TaskDescription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aiz;->a:Lcom/netflix/partner/PSearchDataHandler;

    iput-object p2, p0, Lo/aiz;->c:Ljava/util/List;

    iput-object p3, p0, Lo/aiz;->e:Ljava/lang/String;

    iput-object p4, p0, Lo/aiz;->d:Lo/aiK;

    iput p5, p0, Lo/aiz;->b:I

    iput-object p6, p0, Lo/aiz;->j:Lo/aip;

    iput-object p7, p0, Lo/aiz;->i:Lo/aiE$TaskDescription;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lo/aiz;->a:Lcom/netflix/partner/PSearchDataHandler;

    iget-object v1, p0, Lo/aiz;->c:Ljava/util/List;

    iget-object v2, p0, Lo/aiz;->e:Ljava/lang/String;

    iget-object v3, p0, Lo/aiz;->d:Lo/aiK;

    iget v4, p0, Lo/aiz;->b:I

    iget-object v5, p0, Lo/aiz;->j:Lo/aip;

    iget-object v6, p0, Lo/aiz;->i:Lo/aiE$TaskDescription;

    move-object v7, p1

    check-cast v7, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-static/range {v0 .. v7}, Lcom/netflix/partner/PSearchDataHandler;->b(Lcom/netflix/partner/PSearchDataHandler;Ljava/util/List;Ljava/lang/String;Lo/aiK;ILo/aip;Lo/aiE$TaskDescription;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void
.end method
