.class Lo/OW$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiFunction<",
        "Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;",
        "Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;",
        "Ljava/util/List<",
        "Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/OW$3;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lo/OW$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 334
    check-cast p1, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    check-cast p2, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/OW$Activity;->c(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;",
            "Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;",
            ")",
            "Ljava/util/List<",
            "Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;",
            ">;"
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
