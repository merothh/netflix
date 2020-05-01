.class public final Lo/fb;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fb$Application;
    }
.end annotation


# static fields
.field public static final c:Lo/fb$Application;


# instance fields
.field private final b:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fb$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fb$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/fb;->c:Lo/fb$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "22506"

    .line 8
    iput-object v0, p0, Lo/fb;->e:Ljava/lang/String;

    const/4 v0, 0x2

    .line 10
    iput v0, p0, Lo/fb;->b:I

    const-string v0, "Update Manifest on Network Switch"

    .line 12
    iput-object v0, p0, Lo/fb;->d:Ljava/lang/String;

    return-void
.end method

.method public static final g()Z
    .locals 1

    sget-object v0, Lo/fb;->c:Lo/fb$Application;

    invoke-virtual {v0}, Lo/fb$Application;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/fb;->e:Ljava/lang/String;

    return-object v0
.end method
