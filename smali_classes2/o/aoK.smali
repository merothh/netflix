.class public abstract Lo/aoK;
.super Lo/aon;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aoK$Application;
    }
.end annotation


# static fields
.field public static final e:Lo/aoK$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/aoK$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/aoK$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/aoK;->e:Lo/aoK$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/aon;-><init>()V

    return-void
.end method
