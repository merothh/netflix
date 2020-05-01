.class Lo/No;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final b:Lo/Np;


# direct methods
.method public constructor <init>(Lo/Np;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/No;->b:Lo/Np;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/No;->b:Lo/Np;

    invoke-static {v0, p1}, Lo/Np;->a(Lo/Np;Landroid/view/View;)V

    return-void
.end method
