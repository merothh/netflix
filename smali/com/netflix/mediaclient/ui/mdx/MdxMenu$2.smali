.class Lcom/netflix/mediaclient/ui/mdx/MdxMenu$2;
.super Ljava/lang/Object;
.source "MdxMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMenu;

.field final synthetic val$icon:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MdxMenu;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMenu;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu$2;->val$icon:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu$2;->val$icon:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
