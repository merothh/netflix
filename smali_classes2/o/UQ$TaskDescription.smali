.class final Lo/UQ$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UQ;->e(Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Lo/UU;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lo/UQ$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/UQ$TaskDescription;

    invoke-direct {v0}, Lo/UQ$TaskDescription;-><init>()V

    sput-object v0, Lo/UQ$TaskDescription;->d:Lo/UQ$TaskDescription;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lo/UU;)Z
    .locals 1

    const-string v0, "playerUIEvent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    instance-of p1, p1, Lo/UW;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 59
    check-cast p1, Lo/UU;

    invoke-virtual {p0, p1}, Lo/UQ$TaskDescription;->b(Lo/UU;)Z

    move-result p1

    return p1
.end method
