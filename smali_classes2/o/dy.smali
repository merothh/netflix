.class public final Lo/dy;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dy$TaskDescription;
    }
.end annotation


# static fields
.field public static final e:Lo/dy$TaskDescription;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/dy$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dy$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/dy;->e:Lo/dy$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "14518"

    .line 12
    iput-object v0, p0, Lo/dy;->b:Ljava/lang/String;

    const/4 v0, 0x3

    .line 14
    iput v0, p0, Lo/dy;->a:I

    const-string v0, "InApp Update Test"

    .line 16
    iput-object v0, p0, Lo/dy;->d:Ljava/lang/String;

    return-void
.end method

.method public static final a()Z
    .locals 1

    sget-object v0, Lo/dy;->e:Lo/dy$TaskDescription;

    invoke-virtual {v0}, Lo/dy$TaskDescription;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/dy;->b:Ljava/lang/String;

    return-object v0
.end method
