.class Lo/Qq;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Lo/Qn$TaskDescription;

.field private final c:Lo/Qn;


# direct methods
.method public constructor <init>(Lo/Qn;Lo/Qn$TaskDescription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Qq;->c:Lo/Qn;

    iput-object p2, p0, Lo/Qq;->a:Lo/Qn$TaskDescription;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lo/Qq;->c:Lo/Qn;

    iget-object v1, p0, Lo/Qq;->a:Lo/Qn$TaskDescription;

    check-cast p1, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-static {v0, v1, p1}, Lo/Qn;->d(Lo/Qn;Lo/Qn$TaskDescription;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void
.end method
