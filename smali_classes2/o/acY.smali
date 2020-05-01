.class Lo/acY;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final b:Lo/acX;


# direct methods
.method public constructor <init>(Lo/acX;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/acY;->b:Lo/acX;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/acY;->b:Lo/acX;

    invoke-static {v0, p1}, Lo/acX;->c(Lo/acX;Landroid/view/View;)V

    return-void
.end method
