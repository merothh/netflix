.class final Lo/FN$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FN;->I()V
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
        "Lo/FJ;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lo/FN$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/FN$ActionBar;

    invoke-direct {v0}, Lo/FN$ActionBar;-><init>()V

    sput-object v0, Lo/FN$ActionBar;->d:Lo/FN$ActionBar;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/FJ;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 846
    instance-of p1, p1, Lo/FP$ActionBar;

    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 75
    check-cast p1, Lo/FJ;

    invoke-virtual {p0, p1}, Lo/FN$ActionBar;->a(Lo/FJ;)Z

    move-result p1

    return p1
.end method
