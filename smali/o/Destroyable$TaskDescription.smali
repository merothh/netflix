.class final Lo/Destroyable$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Destroyable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskDescription"
.end annotation


# instance fields
.field private final d:Lo/AccountManagerCallback;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Account;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/AccountManagerCallback;)V
    .locals 1

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/Destroyable$TaskDescription;->e:Ljava/util/List;

    .line 336
    iput-object p1, p0, Lo/Destroyable$TaskDescription;->d:Lo/AccountManagerCallback;

    return-void
.end method

.method synthetic constructor <init>(Lo/AccountManagerCallback;Lo/Destroyable$1;)V
    .locals 0

    .line 331
    invoke-direct {p0, p1}, Lo/Destroyable$TaskDescription;-><init>(Lo/AccountManagerCallback;)V

    return-void
.end method

.method static synthetic a(Lo/Destroyable$TaskDescription;)Lo/AccountManagerCallback;
    .locals 0

    .line 331
    iget-object p0, p0, Lo/Destroyable$TaskDescription;->d:Lo/AccountManagerCallback;

    return-object p0
.end method

.method static synthetic c(Lo/Destroyable$TaskDescription;)Ljava/util/List;
    .locals 0

    .line 331
    iget-object p0, p0, Lo/Destroyable$TaskDescription;->e:Ljava/util/List;

    return-object p0
.end method
