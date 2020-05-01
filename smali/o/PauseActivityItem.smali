.class public abstract Lo/PauseActivityItem;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lo/PauseActivityItem;

.field public static final b:Lo/PauseActivityItem;

.field public static final c:Lo/PauseActivityItem;

.field public static final d:Lo/PauseActivityItem;

.field public static final e:Lo/PauseActivityItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lo/PauseActivityItem$5;

    invoke-direct {v0}, Lo/PauseActivityItem$5;-><init>()V

    sput-object v0, Lo/PauseActivityItem;->e:Lo/PauseActivityItem;

    .line 41
    new-instance v0, Lo/PauseActivityItem$3;

    invoke-direct {v0}, Lo/PauseActivityItem$3;-><init>()V

    sput-object v0, Lo/PauseActivityItem;->c:Lo/PauseActivityItem;

    .line 67
    new-instance v0, Lo/PauseActivityItem$4;

    invoke-direct {v0}, Lo/PauseActivityItem$4;-><init>()V

    sput-object v0, Lo/PauseActivityItem;->b:Lo/PauseActivityItem;

    .line 93
    new-instance v0, Lo/PauseActivityItem$2;

    invoke-direct {v0}, Lo/PauseActivityItem$2;-><init>()V

    sput-object v0, Lo/PauseActivityItem;->a:Lo/PauseActivityItem;

    .line 123
    new-instance v0, Lo/PauseActivityItem$1;

    invoke-direct {v0}, Lo/PauseActivityItem$1;-><init>()V

    sput-object v0, Lo/PauseActivityItem;->d:Lo/PauseActivityItem;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()Z
.end method

.method public abstract b(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z
.end method

.method public abstract d()Z
.end method

.method public abstract d(Lcom/bumptech/glide/load/DataSource;)Z
.end method
