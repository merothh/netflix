.class Lo/Kj;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:I

.field private final b:Lo/Ki;

.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:Z

.field private final f:Z

.field private final g:I

.field private final h:I

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/Ki;Landroid/content/Context;IIZIILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Kj;->b:Lo/Ki;

    iput-object p2, p0, Lo/Kj;->c:Landroid/content/Context;

    iput p3, p0, Lo/Kj;->a:I

    iput p4, p0, Lo/Kj;->d:I

    iput-boolean p5, p0, Lo/Kj;->e:Z

    iput p6, p0, Lo/Kj;->g:I

    iput p7, p0, Lo/Kj;->h:I

    iput-object p8, p0, Lo/Kj;->i:Ljava/lang/String;

    iput-boolean p9, p0, Lo/Kj;->f:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lo/Kj;->b:Lo/Ki;

    iget-object v1, p0, Lo/Kj;->c:Landroid/content/Context;

    iget v2, p0, Lo/Kj;->a:I

    iget v3, p0, Lo/Kj;->d:I

    iget-boolean v4, p0, Lo/Kj;->e:Z

    iget v5, p0, Lo/Kj;->g:I

    iget v6, p0, Lo/Kj;->h:I

    iget-object v7, p0, Lo/Kj;->i:Ljava/lang/String;

    iget-boolean v8, p0, Lo/Kj;->f:Z

    move-object v9, p1

    check-cast v9, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-static/range {v0 .. v9}, Lo/Ki;->a(Lo/Ki;Landroid/content/Context;IIZIILjava/lang/String;ZLcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void
.end method
