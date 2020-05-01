.class public Lo/CursorWindow$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CursorWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateListAnimator"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/LegacyCameraDevice;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/DatabaseUtils;

.field private d:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lo/MatrixCursor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lo/CursorWindow$StateListAnimator;)Lo/MatrixCursor;
    .locals 0

    .line 65
    iget-object p0, p0, Lo/CursorWindow$StateListAnimator;->e:Lo/MatrixCursor;

    return-object p0
.end method

.method static synthetic b(Lo/CursorWindow$StateListAnimator;)Lo/DatabaseUtils;
    .locals 0

    .line 65
    iget-object p0, p0, Lo/CursorWindow$StateListAnimator;->b:Lo/DatabaseUtils;

    return-object p0
.end method

.method static synthetic c(Lo/CursorWindow$StateListAnimator;)Lo/UserInfo;
    .locals 0

    .line 65
    iget-object p0, p0, Lo/CursorWindow$StateListAnimator;->d:Lo/UserInfo;

    return-object p0
.end method

.method static synthetic e(Lo/CursorWindow$StateListAnimator;)Ljava/util/List;
    .locals 0

    .line 65
    iget-object p0, p0, Lo/CursorWindow$StateListAnimator;->a:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public d()Lo/CursorWindow;
    .locals 2

    .line 129
    new-instance v0, Lo/CursorWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/CursorWindow;-><init>(Lo/CursorWindow$StateListAnimator;Lo/CursorWindow$1;)V

    return-object v0
.end method
