.class Lo/XP;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final c:Lo/XN;


# direct methods
.method public constructor <init>(Lo/XN;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/XP;->c:Lo/XN;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/XP;->c:Lo/XN;

    invoke-static {v0, p1}, Lo/XN;->d(Lo/XN;Landroid/view/View;)V

    return-void
.end method
