.class Lo/JI$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/JI;->b(Lcom/netflix/mediaclient/StatusCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/JI;


# direct methods
.method constructor <init>(Lo/JI;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lo/JI$6;->d:Lo/JI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 177
    iget-object p1, p0, Lo/JI$6;->d:Lo/JI;

    const-string v0, "https://www.netflix.com"

    invoke-static {p1, v0}, Lo/JI;->c(Lo/JI;Ljava/lang/String;)V

    return-void
.end method
