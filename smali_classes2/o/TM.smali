.class Lo/TM;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final e:Lo/TC;


# direct methods
.method public constructor <init>(Lo/TC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TM;->e:Lo/TC;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/TM;->e:Lo/TC;

    check-cast p1, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-static {v0, p1}, Lo/TC;->d(Lo/TC;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void
.end method
