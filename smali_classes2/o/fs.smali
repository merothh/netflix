.class public final Lo/fs;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fs$Activity;
    }
.end annotation


# static fields
.field public static final b:Lo/fs$Activity;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fs$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fs$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/fs;->b:Lo/fs$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "23658"

    .line 12
    iput-object v0, p0, Lo/fs;->e:Ljava/lang/String;

    const/4 v0, 0x2

    .line 14
    iput v0, p0, Lo/fs;->d:I

    const-string v0, "New MDX UI for Android Tablets"

    .line 16
    iput-object v0, p0, Lo/fs;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/fs;->e:Ljava/lang/String;

    return-object v0
.end method
