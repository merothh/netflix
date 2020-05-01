.class Lcom/viewpagerindicator/android/osp/ViewPager$3;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/viewpagerindicator/android/osp/ViewPager;


# direct methods
.method constructor <init>(Lcom/viewpagerindicator/android/osp/ViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/viewpagerindicator/android/osp/ViewPager$3;->this$0:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager$3;->this$0:Lcom/viewpagerindicator/android/osp/ViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->access$000(Lcom/viewpagerindicator/android/osp/ViewPager;I)V

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager$3;->this$0:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-virtual {v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->populate()V

    return-void
.end method
