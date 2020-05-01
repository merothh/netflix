.class Lo/Jd;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Lo/IL$Application;


# direct methods
.method public constructor <init>(Lo/IL$Application;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Jd;->c:Lo/IL$Application;

    iput-object p2, p0, Lo/Jd;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lo/Jd;->c:Lo/IL$Application;

    iget-object v1, p0, Lo/Jd;->a:Ljava/lang/String;

    check-cast p1, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-static {v0, v1, p1}, Lo/IL$Application;->d(Lo/IL$Application;Ljava/lang/String;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void
.end method
