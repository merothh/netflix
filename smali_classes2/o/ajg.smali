.class public Lo/ajg;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/BooleanSupplier;


# static fields
.field public static final a:Lo/ajg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ajg;

    invoke-direct {v0}, Lo/ajg;-><init>()V

    sput-object v0, Lo/ajg;->a:Lo/ajg;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAsBoolean()Z
    .locals 1

    invoke-static {}, Lcom/uber/autodispose/android/internal/AutoDisposeAndroidUtil;->c()Z

    move-result v0

    return v0
.end method
