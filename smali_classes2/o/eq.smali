.class public final Lo/eq;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eq$Activity;
    }
.end annotation


# static fields
.field public static final a:Lo/eq$Activity;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eq$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eq$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/eq;->a:Lo/eq$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "15613"

    .line 13
    iput-object v0, p0, Lo/eq;->c:Ljava/lang/String;

    const/4 v0, 0x2

    .line 15
    iput v0, p0, Lo/eq;->e:I

    const-string v0, "Midnight Storm"

    .line 17
    iput-object v0, p0, Lo/eq;->b:Ljava/lang/String;

    return-void
.end method

.method public static final g()Z
    .locals 1

    sget-object v0, Lo/eq;->a:Lo/eq$Activity;

    invoke-virtual {v0}, Lo/eq$Activity;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/eq;->c:Ljava/lang/String;

    return-object v0
.end method
