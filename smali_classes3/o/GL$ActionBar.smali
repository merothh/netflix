.class final Lo/GL$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GL;->a(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Lo/GK;)V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lo/GL$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/GL$ActionBar;

    invoke-direct {v0}, Lo/GL$ActionBar;-><init>()V

    sput-object v0, Lo/GL$ActionBar;->d:Lo/GL$ActionBar;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Integer;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lo/GL;->d:Lo/GL$Activity;

    invoke-static {v0}, Lo/GL$Activity;->e(Lo/GL$Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 39
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lo/GL$ActionBar;->b(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
