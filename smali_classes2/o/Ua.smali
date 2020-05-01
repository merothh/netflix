.class Lo/Ua;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final c:Lo/TX;


# direct methods
.method public constructor <init>(Lo/TX;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ua;->c:Lo/TX;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/Ua;->c:Lo/TX;

    check-cast p1, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-static {v0, p1}, Lo/TX;->d(Lo/TX;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void
.end method
