.class final Lo/EO$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/EO;-><init>(Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/ES;Ljava/lang/String;)V
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
        "Lo/DG;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo/EO$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/EO$4;

    invoke-direct {v0}, Lo/EO$4;-><init>()V

    sput-object v0, Lo/EO$4;->a:Lo/EO$4;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/DG;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    instance-of p1, p1, Lo/DG$AssistContent;

    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 19
    check-cast p1, Lo/DG;

    invoke-virtual {p0, p1}, Lo/EO$4;->a(Lo/DG;)Z

    move-result p1

    return p1
.end method
