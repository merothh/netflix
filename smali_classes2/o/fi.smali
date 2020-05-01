.class public final Lo/fi;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fi$ActionBar;
    }
.end annotation


# static fields
.field public static final a:Lo/fi$ActionBar;


# instance fields
.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fi$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fi$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/fi;->a:Lo/fi$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "22728"

    .line 17
    iput-object v0, p0, Lo/fi;->e:Ljava/lang/String;

    const-string v0, "Mdx: Web Server Port Fallback"

    .line 18
    iput-object v0, p0, Lo/fi;->d:Ljava/lang/String;

    const/4 v0, 0x2

    .line 19
    iput v0, p0, Lo/fi;->c:I

    return-void
.end method

.method public static final h()Z
    .locals 1

    sget-object v0, Lo/fi;->a:Lo/fi$ActionBar;

    invoke-virtual {v0}, Lo/fi$ActionBar;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/fi;->e:Ljava/lang/String;

    return-object v0
.end method
