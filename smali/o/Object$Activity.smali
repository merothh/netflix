.class final Lo/Object$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Activity"
.end annotation


# instance fields
.field public final a:Lo/Object;

.field public final b:Lo/Object$Application;

.field public d:I

.field public e:Lo/OutOfMemoryError;


# direct methods
.method public constructor <init>(Lo/Object;Lo/Object$Application;)V
    .locals 0

    .line 1914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1915
    iput-object p1, p0, Lo/Object$Activity;->a:Lo/Object;

    .line 1916
    iput-object p2, p0, Lo/Object$Activity;->b:Lo/Object$Application;

    .line 1917
    sget-object p1, Lo/OutOfMemoryError;->a:Lo/OutOfMemoryError;

    iput-object p1, p0, Lo/Object$Activity;->e:Lo/OutOfMemoryError;

    return-void
.end method


# virtual methods
.method public a(Lo/Object$LoaderManager;)Z
    .locals 1

    .line 1921
    iget v0, p0, Lo/Object$Activity;->d:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/Object$Activity;->e:Lo/OutOfMemoryError;

    .line 1922
    invoke-virtual {p1, v0}, Lo/Object$LoaderManager;->a(Lo/OutOfMemoryError;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
