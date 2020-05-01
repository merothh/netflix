.class public final Lo/fL;
.super Lo/fQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fL$Activity;
    }
.end annotation


# static fields
.field public static final a:Lo/fL$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fL$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fL$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/fL;->a:Lo/fL$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lo/fQ;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "13662"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "13662"

    return-object v0
.end method
