.class public final Lo/Dj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Dj$Activity;
    }
.end annotation


# static fields
.field public static final b:Lo/Dj$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Dj$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Dj$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Dj;->b:Lo/Dj$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/AS;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lo/Dj;->b:Lo/Dj$Activity;

    invoke-virtual {v0, p0}, Lo/Dj$Activity;->b(Ljava/util/List;)Z

    move-result p0

    return p0
.end method
