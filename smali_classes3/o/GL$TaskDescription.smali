.class final Lo/GL$TaskDescription;
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
        "Lo/GY;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lo/GL$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/GL$TaskDescription;

    invoke-direct {v0}, Lo/GL$TaskDescription;-><init>()V

    sput-object v0, Lo/GL$TaskDescription;->e:Lo/GL$TaskDescription;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lo/GY;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    instance-of p1, p1, Lo/GY$ActionBar$Activity;

    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 39
    check-cast p1, Lo/GY;

    invoke-virtual {p0, p1}, Lo/GL$TaskDescription;->d(Lo/GY;)Z

    move-result p1

    return p1
.end method
