.class public final Lo/fo;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fo$ActionBar;
    }
.end annotation


# static fields
.field public static final c:Lo/fo$ActionBar;


# instance fields
.field private final b:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fo$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fo$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/fo;->c:Lo/fo$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "23255"

    .line 9
    iput-object v0, p0, Lo/fo;->b:Ljava/lang/String;

    const/16 v0, 0x9

    .line 11
    iput v0, p0, Lo/fo;->d:I

    const-string v0, "Downloaded For You Take 2"

    .line 13
    iput-object v0, p0, Lo/fo;->e:Ljava/lang/String;

    return-void
.end method

.method public static final f()Z
    .locals 1

    sget-object v0, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {v0}, Lo/fo$ActionBar;->d()Z

    move-result v0

    return v0
.end method

.method public static final h()Z
    .locals 1

    sget-object v0, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {v0}, Lo/fo$ActionBar;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/fo;->b:Ljava/lang/String;

    return-object v0
.end method
