.class Lo/TB;
.super Ljava/lang/Object;

# interfaces
.implements Lo/SimpleMonthView$ActionBar;


# instance fields
.field private final b:Lo/TC;


# direct methods
.method public constructor <init>(Lo/TC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TB;->b:Lo/TC;

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/media/Language;)V
    .locals 1

    iget-object v0, p0, Lo/TB;->b:Lo/TC;

    invoke-static {v0, p1}, Lo/TC;->d(Lo/TC;Lcom/netflix/mediaclient/media/Language;)V

    return-void
.end method
