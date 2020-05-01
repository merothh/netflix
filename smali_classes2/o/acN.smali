.class Lo/acN;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final e:Lo/acP;


# direct methods
.method public constructor <init>(Lo/acP;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/acN;->e:Lo/acP;

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lo/acN;->e:Lo/acP;

    invoke-static {v0, p1, p2}, Lo/acP;->e(Lo/acP;Landroid/view/View;Z)V

    return-void
.end method
